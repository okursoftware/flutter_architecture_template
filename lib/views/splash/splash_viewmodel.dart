import 'package:flutter_architecture/app/locator.dart';
import 'package:flutter_architecture/app/router.gr.dart';
import 'package:flutter_architecture/services/wait_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends FutureViewModel {
  WaitService _waitService = locator<WaitService>();
  NavigationService _navigationService = locator<NavigationService>();

  Future waitAndGoHome() async{
    print("A1");
    await _waitService.waitTwoSecond();
    print("A2");
    _navigationService.pushNamedAndRemoveUntil(Routes.homeView);
  }

  @override
  Future futureToRun() => waitAndGoHome();
}
