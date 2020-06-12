import 'package:injectable/injectable.dart';

@lazySingleton
class ApiClient {
  //Example
  Future get() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  //Example
  Future post() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
