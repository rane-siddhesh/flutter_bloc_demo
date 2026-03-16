import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget{
  const ButtonWidget({super.key, required this.onSignInClick});

  final Function() onSignInClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [Color(0xffe341ef), Color(0xfffe4088)]),
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: ElevatedButton(
        onPressed: onSignInClick,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          "Sign In",
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
    );
  }

}