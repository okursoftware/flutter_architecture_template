import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_architecture/view/home/home_view.dart';
import 'package:flutter_architecture/view/splash/splash_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashView splashView;

  HomeView homeView;
}