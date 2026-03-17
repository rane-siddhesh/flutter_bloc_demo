import 'package:bloc_demo/models/userdetails/user_details_model.dart';
import 'package:equatable/equatable.dart';

abstract class UserState extends Equatable{}

class InitialLoadingState extends UserState {
  @override
  List<Object?> get props => [];

}

class UserLoadedState extends UserState {
  final UserDetailsModel? userDetailsModel;

  UserLoadedState({required this.userDetailsModel});
  @override
  List<Object?> get props => [userDetailsModel];
}

class UserErrorState extends UserState{
  final String? errorMsg;

  UserErrorState({required this.errorMsg});
  @override
  List<Object?> get props => [errorMsg];

}