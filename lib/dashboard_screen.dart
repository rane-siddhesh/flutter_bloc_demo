import 'package:bloc_demo/bloc/user_details/user_bloc.dart';
import 'package:bloc_demo/bloc/user_details/user_event.dart';
import 'package:bloc_demo/bloc/user_details/user_state.dart';
import 'package:bloc_demo/models/userdetails/user_details_model.dart';
import 'package:bloc_demo/widgets/views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(UserReqEvent());
  }

  @override
  Widget build(BuildContext context) {
    Widget loadingUI = Container(
      color: Color(0xff0b090a),
      child: Center(child: CircularProgressIndicator(color: Color(0xfffe4088))),
    );

    Widget getDashboardUI(UserDetailsModel model) {
      return Container(
        padding: EdgeInsets.all(25),
        color: Color(0xff0b090a),
        child: Column(
          children: [
            ProfileHeader(model: model,),
            SizedBox(height: 15,),
            PersonalDetails(model: model,)
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff0b090a),
        centerTitle: true,
      ),
      body: BlocConsumer<UserBloc, UserState>(
        builder: (BuildContext context, UserState state) {
          if (state is InitialLoadingState) {
            return loadingUI;
          }

          if (state is UserLoadedState) {
            return getDashboardUI(state.userDetailsModel!);
          }

          return Container();
        },
        listener: (BuildContext context, UserState state) {
          if (state is UserLoadedState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("User details fetched successfully")),
            );
          }
          if (state is UserErrorState) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.errorMsg.toString())));
          }
        },
      ),
    );
  }
}
