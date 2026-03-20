import 'package:bloc/bloc.dart';
import 'package:bloc_demo/bloc/user_details/user_event.dart';
import 'package:bloc_demo/bloc/user_details/user_state.dart';
import 'package:bloc_demo/di/di_container.dart';
import 'package:bloc_demo/models/userdetails/user_details_model.dart';
import 'package:bloc_demo/repo/user_repo.dart';

class UserBloc extends Bloc<UserEvent, UserState>{
  UserBloc():super(InitialLoadingState()) {
    on<UserReqEvent>((event, emit) async{
      try {
        var userRepo = locator<UserRepo>();
        UserDetailsModel userDetailsModel = await userRepo.getUserDetailsApi();
        emit(UserLoadedState(userDetailsModel: userDetailsModel));
      } catch (e) {
        print(e);
        emit(UserErrorState(errorMsg: e.toString()));
      }
    });
  }
}