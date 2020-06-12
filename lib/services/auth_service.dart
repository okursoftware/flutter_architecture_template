import 'package:flutter_architecture/app/locator.dart';
import 'package:flutter_architecture/common/api_client/api_client.dart';
import 'package:flutter_architecture/models/user.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthService {
  ApiClient _apiClient = locator<ApiClient>();
  User _user;

  User get user => _user;

  bool get hasUser {
    return _user != null;
  }

  Future<User> login({String email, String password}) async {
    try {
      if (!hasUser) {
        await _apiClient.post();
        //maybe json decode
      }
      return new User(name: "TestName", surname: "TestSurname");
    } catch (e) {
      throw Exception();
    }
  }
}
