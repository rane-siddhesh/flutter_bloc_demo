import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.onSaveClick,
    required this.isPassword,
  });

  final Function(String value) onSaveClick;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: isPassword ? "emilyspass" : "emilys",
      textInputAction: TextInputAction.next,
      cursorColor: Colors.white,
      cursorErrorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      obscureText: isPassword ? true : false,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Color(0xff141414),
        filled: true,
        hint: Text(isPassword ? "Password" : "Username", style: TextStyle(color: Color(0xff4a4a4a))),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
          borderSide: BorderSide(color: Color(0xff141414), width: 0.w),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
          borderSide: BorderSide(color: Color(0xff141414), width: 0.w),
        ),
      ),
      onSaved: (value) {
        onSaveClick(value!);
      },
      validator: (value) {
        if (value!.isEmpty) {
          return isPassword ? "Please enter valid password" : "Please enter valid username";
        }
        return null;
      },
    );
  }
}
