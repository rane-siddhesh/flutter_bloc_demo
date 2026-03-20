import 'package:bloc_demo/models/userdetails/company_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyDetails extends StatelessWidget{
  const CompanyDetails({super.key, required this.model});

  final CompanyDetailsModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(alignment: Alignment.topLeft, child: Text("Company Details")),
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
                              Icons.factory,
                              color: Color(0xffaaaaaa),
                              size: 16.w,
                            ),
                          ),
                          SizedBox(width: 7.w),
                          Text(
                            "Name",
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
                        model.name!,
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
                            Icons.work,
                            color: Color(0xffaaaaaa),
                            size: 16.w,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Department",
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
                        model.department!,
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
                            Icons.title_outlined,
                            color: Color(0xffaaaaaa),
                            size: 16.w,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Designation",
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
                        model.title!,
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
                            Icons.location_on_outlined,
                            color: Color(0xffaaaaaa),
                            size: 16.w,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Address",
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
                        "${model.address!.address!} ${model.address!.city!}",
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
                            Icons.map_outlined,
                            color: Color(0xffaaaaaa),
                            size: 16.w,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Country",
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
                        model.address!.country!,
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