import 'package:flutter/material.dart';
import 'package:flutter_architecture/utils/ui_helpers.dart';
import 'package:flutter_architecture/views/splash/splash_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
        builder: (context, model, child) {
          SizeConfig().init(context);
          return Scaffold(
            appBar: AppBar(
              title: Text("Splash Screen"),
            ),
            body: Center(
              child: model.isBusy ? CircularProgressIndicator() : Container(),
            ),
          );
        },
        viewModelBuilder: () => SplashViewModel());
  }
}
