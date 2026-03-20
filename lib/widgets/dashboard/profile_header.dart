import 'package:bloc_demo/main.dart';
import 'package:bloc_demo/models/userdetails/user_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.model});

  final UserDetailsModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color(0xff1e1a19), borderRadius: BorderRadius.circular(35.0.r)),
      child: Row(
        children: [
          CircleAvatar(radius: 25.r, child: Image.network(model.image ?? ''),),
          SizedBox(width: 15.w,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${model.firstName} ${model.lastName}", style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 17.sp
              ),),
              Text("${model.username}",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 15.sp
                ),),
            ],
          )
        ],
      ),
    );
  }
}