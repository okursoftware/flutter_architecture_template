import 'package:flutter/material.dart';
import 'package:flutter_architecture/view/login/login_viewmodel.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                      child:
                      model.isBusy
                          ? CircularProgressIndicator()
                          : RaisedButton(
                              onPressed: model.loginTest,
                              child: Text("Login Test"),
                      )
                  ),
                  RaisedButton( onPressed: model.goToHome,
                  child: Text("Go Home"),)
                ],
              ),
            ),
        viewModelBuilder: () => LoginViewModel());
  }
}
