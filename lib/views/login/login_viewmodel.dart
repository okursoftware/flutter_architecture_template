import 'package:flutter_architecture/app/locator.dart';
import 'package:flutter_architecture/app/router.gr.dart';
import 'package:flutter_architecture/models/user.dart';
import 'package:flutter_architecture/services/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  AuthService _authService = locator<AuthService>();
  SnackbarService _snackbarService = locator<SnackbarService>();
  NavigationService _navigationService = locator<NavigationService>();
  User _user;

  User get user => _user;

  Future loginTest() async {
    _user = await runBusyFuture(_authService.login());
    _snackbarService.showSnackbar(
        title: "Welcome", message: _user.name +" "+ _user.surname);
  }

  goToHome() {
    _navigationService.navigateTo(Routes.homeView);
  }
}
