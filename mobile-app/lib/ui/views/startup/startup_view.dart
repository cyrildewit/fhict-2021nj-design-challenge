import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:project_trash/app/locator.dart';
import 'package:project_trash/app/router.gr.dart';
import 'package:project_trash/ui/views/startup/startup_viewmodel.dart';
import 'package:project_trash/ui/views/home/home_view.dart';
import 'package:project_trash/ui/views/statistics/statistics_view.dart';
import 'package:project_trash/ui/views/nfc_links/nfc_links_view.dart';
import 'package:project_trash/ui/views/settings/settings_view.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Project Trash'),
        ),
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: Expanded(
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[
        //         SizedBox(
        //           height: 24,
        //           child: SvgPicture.asset(
        //             'assets/images/logo.svg',
        //             semanticsLabel: 'Project TRASH Logo',
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                // decoration: Deco,
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://avatars1.githubusercontent.com/u/16477999?s=460&u=07f0424d8d360820cb8f6f5af520c7d5e77bd827&v=4',
                  ),
                ),
                accountName: new Text('Claudia Dekker'),
                accountEmail: new Text("claudia.dekker@gmail.com"),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () => model.navigateToIndex(0, context),
              ),
              ListTile(
                leading: Icon(Icons.bar_chart),
                title: Text('Statistieken'),
                onTap: () => model.navigateToIndex(1, context),
              ),
              ListTile(
                leading: Icon(Icons.nfc),
                title: Text('NFC koppelingen'),
                onTap: () => model.navigateToIndex(2, context),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Instellingen'),
                onTap: () => model.navigateToIndex(3, context),
              ),
            ],
          ),
        ),
        body: getViewForIndex(model.currentIndex),
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: Color(0xFF0779E4),
        //   onPressed: () async {
        //     //
        //   },
        //   tooltip: 'NFC koppelen',
        //   child: const Icon(Icons.nfc),
        // ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return HomeView();
      case 1:
        return StatisticsView();
      case 2:
        return NfcLinksView();
      case 3:
        return SettingsView();
      default:
        return HomeView();
    }
  }
}