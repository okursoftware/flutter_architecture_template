import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text("Home Screen"),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Welcome Home",
                      style: TextStyle(color: Colors.orange, fontSize: 24),
                    ),
                    RaisedButton(
                      onPressed: model.goToLogin,
                      child: Text("Go Login"),
                    ) ,
                  ],
                ),
              ),
            ),
        viewModelBuilder: () => HomeViewModel());
  }
}
