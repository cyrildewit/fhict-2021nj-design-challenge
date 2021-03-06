import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:project_trash/app/locator.dart';
import 'package:project_trash/ui/views/nfc_links/nfc_links_viewmodel.dart';

class NfcLinksView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NfcLinksViewModel>.reactive(
      disposeViewModel: false,
      initialiseSpecialViewModelsOnce: true,
      builder: (context, model, child) => Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 12),
            Text(
              'NFC koppelingen',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            RaisedButton(
              child: Text('Apparaat NFC koppelen'),
              onPressed: () {},
            ),
            SizedBox(height: 24),
            RaisedButton(
              child: Text('NFC druppel koppelen'),
              onPressed: () {},
            ),
            SizedBox(height: 24),
            Divider(),

// ListView.
          ],
        ),
      ),
      viewModelBuilder: () => locator<NfcLinksViewModel>(),
    );
  }
}
