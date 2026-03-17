import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable {

}

class UserReqEvent extends UserEvent {
  @override
  List<Object?> get props => [];
}