import 'package:bloc_demo/bloc/login/login_bloc.dart';
import 'package:bloc_demo/bloc/login/login_event.dart';
import 'package:bloc_demo/bloc/login/login_state.dart';
import 'package:bloc_demo/dashboard_screen.dart';
import 'package:bloc_demo/models/login_req_model.dart';
import 'package:bloc_demo/widgets/button_widget.dart';
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

      bloc.add(LoginReqEvent(loginReqModel: loginReqModel));
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget loadingUI = CircularProgressIndicator(color: Color(0xfffe4088));

    Widget initialUI = Form(
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
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Username",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            textInputAction: TextInputAction.next,
            cursorColor: Colors.white,
            cursorErrorColor: Colors.white,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              fillColor: Color(0xff141414),
              filled: true,
              hint: Text(
                "Username",
                style: TextStyle(color: Color(0xff4a4a4a)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Color(0xff141414),
                  width: 0,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Color(0xff141414),
                  width: 0,
                ),
              ),
            ),
            onSaved: (value) {
              _username = value!;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter valid username";
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Password",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            cursorColor: Colors.white,
            cursorErrorColor: Colors.white,
            textInputAction: TextInputAction.done,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hint: Text(
                "Password",
                style: TextStyle(color: Color(0xff4a4a4a)),
              ),
              filled: true,
              fillColor: Color(0xff141414),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Color(0xff141414)),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Color(0xff141414)),
              ),
            ),
            obscureText: true,
            onSaved: (value) {
              _password = value!;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter valid password";
              }
              return null;
            },
          ),
          SizedBox(height: 30),
          ButtonWidget(onSignInClick: onSignInClick),
        ],
      ),
    );

    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (BuildContext context, state) {
          if (state is LoginLoadedState) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => DashboardScreen()));
          }

          if (state is LoginErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error occurred")));
          }
        },
        child: Container(
          color: Color(0xff0b090a),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: BlocBuilder<LoginBloc, LoginState>(
                builder: (BuildContext context, LoginState state) {
                  if (state is LoginInitialState) {
                    return initialUI;
                  } else if (state is LoginLoadingState) {
                    return loadingUI;
                  } /*else if (state is LoginLoadedState) {
                    return Text(state.loginResModel?.email??"", style: TextStyle(color: Colors.white),);
                  } else if (state is LoginErrorState) {
                    return Text(state.errorMsg??"", style: TextStyle(color: Colors.white),);
                  }*/ else
                    return Container();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
