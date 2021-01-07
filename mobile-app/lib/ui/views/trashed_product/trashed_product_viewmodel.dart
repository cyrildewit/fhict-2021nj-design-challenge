import 'package:injectable/injectable.dart';
import 'package:stacked/stacked.dart';
import 'dart:io';
import 'package:meta/meta.dart';

const String NfcLinkingBusyKey = 'nfc-linking-key';

@singleton
class TrashedProductViewModel extends BaseViewModel {
  Future initialise() async {
    setBusyForObject(NfcLinkingBusyKey, true);

    // sleep(Duration(seconds: 3));
    await justWait(numberOfSeconds: 5);

    setBusyForObject(NfcLinkingBusyKey, false);
  }

  Future justWait({@required int numberOfSeconds}) async {
    await Future.delayed(Duration(seconds: numberOfSeconds));
  }
}
