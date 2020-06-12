import 'package:flutter/material.dart';
import 'package:flutter_architecture/view/home/home_viewmodel.dart';
import 'package:flutter_architecture/view/splash/splash_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text("Home Screen"),
              ),
              body: Center(
                child: Text(
                  "Welcome Home",
                  style: TextStyle(color: Colors.orange, fontSize: 24),
                ),
              ),
            ),
        viewModelBuilder: () => HomeViewModel());
  }
}
