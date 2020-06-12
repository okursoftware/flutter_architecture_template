import 'package:flutter/material.dart';
import 'package:flutter_architecture/utils/responsive_helper.dart';
import 'package:flutter_architecture/view/splash/splash_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
        builder: (context, model, child) {
          //this adjustment should be made on the first screen opened
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
