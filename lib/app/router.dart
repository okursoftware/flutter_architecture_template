import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_architecture/views/home/home_view.dart';
import 'package:flutter_architecture/views/login/login_view.dart';
import 'package:flutter_architecture/views/splash/splash_view.dart';


@MaterialAutoRouter(routes: [
  MaterialRoute(
    page: SplashView,
    initial: true,
  ),
  MaterialRoute(
    page: HomeView,
  ),
  MaterialRoute(
    page: LoginView,
  ),
])
class $Router {}
