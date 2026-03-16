import 'package:bloc_demo/models/login_req_model.dart';
import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {

 }

 class LoginReqEvent extends LoginEvent{
  // final String username;
  // final String password;
  final LoginReqModel? loginReqModel;

  LoginReqEvent({required this.loginReqModel});

  @override
  // TODO: implement props
  List<Object?> get props => [loginReqModel];
 }