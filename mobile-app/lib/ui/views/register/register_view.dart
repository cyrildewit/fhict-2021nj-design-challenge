import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:stacked/stacked.dart';

import 'package:project_trash/app/locator.dart';
import 'package:project_trash/ui/views/register/register_viewmodel.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.reactive(
      disposeViewModel: false,
      initialiseSpecialViewModelsOnce: true,
      builder: (context, model, child) => Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 12),
            Text(
              'Registreren',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: FlexColor.greenLightPrimary,
              ),
            ),
            SizedBox(height: 32),
            Container(
              child: new TextField(
                controller: model.nameController,
                decoration: InputDecoration(labelText: 'Naam'),
              ),
            ),
            SizedBox(height: 12),
            Container(
              child: new TextField(
                controller: model.emailController,
                decoration: InputDecoration(labelText: 'E-mailadres'),
              ),
            ),
            SizedBox(height: 12),
            Container(
              child: new TextField(
                controller: model.passwordController,
                decoration: InputDecoration(labelText: 'Wachtwoord'),
                obscureText: true,
              ),
            ),
            SizedBox(height: 12),
            Container(
              child: new TextField(
                controller: model.passwordConfirmationController,
                decoration: InputDecoration(labelText: 'Wachtwoord bevestigen'),
                obscureText: true,
              ),
            ),
            SizedBox(height: 32),
            RoundedLoadingButton(
              child: Text(
                'Inloggen',
                style: TextStyle(color: Colors.white),
              ),
              controller: model.submitBtnController,
              onPressed: model.submit,
            ),
          ],
        ),
      ),
      viewModelBuilder: () => locator<RegisterViewModel>(),
    );
  }
}
