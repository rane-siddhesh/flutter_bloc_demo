import 'package:bloc_demo/models/login_res_model.dart';
import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {}

class LoginInitialState extends LoginState {
  @override
  List<Object?> get props => [];
}

class LoginLoadingState extends LoginState {
  @override
  List<Object?> get props => [];
}

class LoginLoadedState extends LoginState {
  final LoginResModel? loginResModel;

  LoginLoadedState({required this.loginResModel});

  @override
  List<Object?> get props => [loginResModel];
}

class LoginErrorState extends LoginState {
  final String? errorMsg;

  LoginErrorState({required this.errorMsg});

  @override
  List<Object?> get props => [errorMsg];
}
