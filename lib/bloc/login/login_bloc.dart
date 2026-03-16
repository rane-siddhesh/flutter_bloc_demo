import 'package:bloc/bloc.dart';
import 'package:bloc_demo/bloc/login/login_event.dart';
import 'package:bloc_demo/bloc/login/login_state.dart';
import 'package:bloc_demo/models/login_res_model.dart';
import 'package:bloc_demo/repo/login_repo.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState()) {
    on<LoginReqEvent>((event, emit) async {
      emit(LoginLoadingState());

      try {
        LoginResModel loginResModel = await LoginRepo().loginApi(
          event.loginReqModel?.username ?? "",
          event.loginReqModel?.password ?? "",
        );

        emit(LoginLoadedState(loginResModel: loginResModel));
      } catch (e) {
        print(e);
        emit(LoginErrorState(errorMsg: e.toString()));
      }
    });
  }
}
