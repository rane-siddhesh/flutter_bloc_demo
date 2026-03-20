import 'package:bloc_demo/repo/login_repo.dart';
import 'package:bloc_demo/repo/user_repo.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setUp() {
  locator.registerSingleton(LoginRepo());
  locator.registerSingleton(UserRepo());
}
