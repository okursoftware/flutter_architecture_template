
import 'package:flutter_architecture/app/locator.dart';
import 'package:flutter_architecture/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel{
  NavigationService _navigationService = locator<NavigationService>();

  goToLogin(){
    _navigationService.navigateTo(Routes.loginView);
  }
}