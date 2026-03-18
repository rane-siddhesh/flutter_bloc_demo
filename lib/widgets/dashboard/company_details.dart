import 'package:bloc_demo/models/userdetails/company_details_model.dart';
import 'package:flutter/material.dart';

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
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color(0xff1e1a19),
            borderRadius: BorderRadius.circular(35.0),
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
                            radius: 16,
                            child: Icon(
                              Icons.factory,
                              color: Color(0xffaaaaaa),
                              size: 16,
                            ),
                          ),
                          SizedBox(width: 7),
                          Text(
                            "Name",
                            style: Theme.of(context).textTheme.bodySmall,
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
                        style: Theme.of(context).textTheme.bodySmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              SizedBox(
                height: 1,
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
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff0b090a),
                          radius: 16,
                          child: Icon(
                            Icons.work,
                            color: Color(0xffaaaaaa),
                            size: 16,
                          ),
                        ),
                        SizedBox(width: 5),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Department",
                            style: Theme.of(context).textTheme.bodySmall,
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
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              SizedBox(
                height: 1,
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
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff0b090a),
                          radius: 16,
                          child: Icon(
                            Icons.title_outlined,
                            color: Color(0xffaaaaaa),
                            size: 16,
                          ),
                        ),
                        SizedBox(width: 5),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Designation",
                            style: Theme.of(context).textTheme.bodySmall,
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
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              SizedBox(
                height: 1,
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
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff0b090a),
                          radius: 16,
                          child: Icon(
                            Icons.location_on_outlined,
                            color: Color(0xffaaaaaa),
                            size: 16,
                          ),
                        ),
                        SizedBox(width: 5),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Address",
                            style: Theme.of(context).textTheme.bodySmall,
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
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              SizedBox(
                height: 1,
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
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xff0b090a),
                          radius: 16,
                          child: Icon(
                            Icons.map_outlined,
                            color: Color(0xffaaaaaa),
                            size: 16,
                          ),
                        ),
                        SizedBox(width: 5),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Country",
                            style: Theme.of(context).textTheme.bodySmall,
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
                        style: Theme.of(context).textTheme.bodySmall,
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