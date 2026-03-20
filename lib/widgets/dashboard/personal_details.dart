import 'package:bloc_demo/models/userdetails/user_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key, required this.model});

  final UserDetailsModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(alignment: Alignment.topLeft, child: Text("Personal Details")),
        SizedBox(height: 10.h),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color(0xff1e1a19),
            borderRadius: BorderRadius.circular(35.0.r),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff0b090a),
                            radius: 16.r,
                            child: Icon(
                              Icons.email_outlined,
                              color: Color(0xffaaaaaa),
                              size: 16.w,
                            ),
                          ),
                          SizedBox(width: 7.w),
                          Text(
                            "Email",
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 15.sp
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        model.email!,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 15.sp
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              SizedBox(
                height: 1.h,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff1e1a19),
                        Colors.white10,
                        Color(0xff1e1a19),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff0b090a),
                          radius: 16.r,
                          child: Icon(
                            Icons.phone_outlined,
                            color: Color(0xffaaaaaa),
                            size: 16.w,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Mobile No.",
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                fontSize: 15.sp
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        model.phone!,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 15.sp
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              SizedBox(
                height: 1.h,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff1e1a19),
                        Colors.white10,
                        Color(0xff1e1a19),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff0b090a),
                          radius: 16.r,
                          child: Icon(
                            Icons.calendar_month_outlined,
                            color: Color(0xffaaaaaa),
                            size: 16.w,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "DOB",
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                fontSize: 15.sp
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        model.birthDate!,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 15.sp
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              SizedBox(
                height: 1.h,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff1e1a19),
                        Colors.white10,
                        Color(0xff1e1a19),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff0b090a),
                          radius: 16.r,
                          child: Icon(
                            Icons.bloodtype_outlined,
                            color: Color(0xffaaaaaa),
                            size: 16.w,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Blood Group",
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                fontSize: 15.sp
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        model.bloodGroup!,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 15.sp
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
