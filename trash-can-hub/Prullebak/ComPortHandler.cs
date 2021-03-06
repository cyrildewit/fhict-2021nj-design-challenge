﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.IO.Ports;

namespace Prullebak
{
    class comPortHandler
    {
        //fields
        private string[] ports;
        private SerialPort port;
        private TrashMain main;

        //constructor
        public comPortHandler(TrashMain main)
        {
            this.main = main;
            ports = SerialPort.GetPortNames();

            string selectedPort = ports[0]; 
            port = new SerialPort(selectedPort, 9600, Parity.None, 8, StopBits.One);
            port.DataReceived += new SerialDataReceivedEventHandler(DataReceivedHandler);
            port.Open();
        }

        public void SelectArduinoMatrix(SeperationTray tray)
        {
            port.Write("#" + Convert.ToString(tray) + "\n"); //to sent info we need start with an # and end with \n
        }
        
        public void WriteToLcd(string text)
        {
            port.Write("#~" + text + "\n"); //to sent to lcd we have to add ~ so it knows it's for the lcd
        }

        public void SentCreditInfo(string text)
        {
            port.Write("#^" + text + "\n"); // to sent credit info we add ^
        }

        private void DataReceivedHandler(
                object sender,
                SerialDataReceivedEventArgs e)
        {
            SerialPort sp = (SerialPort)sender;
            string input = ""; // create a variable that we will add on what we get via the serial port
            // normaly the serial port separates the id in multiple things so we keep reading untill there is an #
            //Somtimes it returns nothing so we check if there is nothing and if that's true we just repeat
            string indata = sp.ReadExisting(); // read the serial port
            while (indata == "" || indata.Substring(indata.Length - 1) != "#")
            {
                input = input + indata; // add input the input var
                indata = sp.ReadExisting();
            }
            
            input = input + indata;
            input = input.Remove(input.Length - 1); //remove the #
            Console.WriteLine(input);
            //when a product has been trown away it sent's a "*" so when that happends call function
            if (input == "*")
            {
                main.AddToList();
            }
            else
            {
                main.AddCredit(input);
            }
            
        }
    }
}