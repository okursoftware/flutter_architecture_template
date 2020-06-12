import 'package:injectable/injectable.dart';

@lazySingleton
class WaitService {

  Future waitTwoSecond() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
