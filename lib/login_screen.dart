import 'package:bloc_demo/bloc/login/login_bloc.dart';
import 'package:bloc_demo/bloc/login/login_event.dart';
import 'package:bloc_demo/bloc/login/login_state.dart';
import 'package:bloc_demo/dashboard_screen.dart';
import 'package:bloc_demo/models/login/login_req_model.dart';
import 'package:bloc_demo/utils/local_storage.dart';
import 'package:bloc_demo/widgets/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  String _username = "";
  String _password = "";
  final formKey = GlobalKey<FormState>();

  void onSignInClick() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      print("username : $_username and password : $_password");

      var bloc = BlocProvider.of<LoginBloc>(context);
      var loginReqModel = LoginReqModel(
        username: _username,
        password: _password,
      );

      // bloc.add(LoginReqEvent(loginReqModel: loginReqModel));
      context.read<LoginBloc>().add(
        LoginReqEvent(loginReqModel: loginReqModel),
      );
    }
  }

  void onSaveData(String value, bool isPassword) {
    if (isPassword) {
      _password = value;
    } else {
      _username = value;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget loadingUI = Container(
      color: Color(0x800b090a),
      child: Center(child: CircularProgressIndicator(color: Color(0xfffe4088))),
    );

    Widget initialUI = Container(
      color: Color(0xff0b090a),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 100),
                CustomText(title: "Username"),
                SizedBox(height: 10),
                CustomTextfield(
                  onSaveClick: (value) {
                    onSaveData(value, false);
                  },
                  isPassword: false,
                ),
                SizedBox(height: 20),
                CustomText(title: "Password"),
                SizedBox(height: 10),
                CustomTextfield(
                  onSaveClick: (value) {
                    onSaveData(value, true);
                  },
                  isPassword: true,
                ),
                SizedBox(height: 30),
                SignInButtonWidget(onSignInClick: onSignInClick),
              ],
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (BuildContext context, state) {
          if (state is LoginLoadedState) {
            LocalStorage().setValue(
              "accessKey",
              state.loginResModel?.accessToken ?? "",
            );
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (ctx) => DashboardScreen()),
            );
          }

          if (state is LoginErrorState) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Error occurred")));
            // showDialog(context: context, builder: (ctx) {
            //   return AlertDialog(title: Text("Error Occurred"),content: Text("Something went wrong."), actions: <Widget>[
            //     TextButton(onPressed: () {Navigator.of(context).pop();}, child: Text("Cancel")),
            //     TextButton(onPressed: () {Navigator.of(context).pop();}, child: Text("Ok"))
            //   ],);
            // });
          }
        },
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (BuildContext context, LoginState state) {
            return Stack(
              children: [initialUI, if (state is LoginLoadingState) loadingUI],
            );
          },
        ),
      ),
    );
  }
}
