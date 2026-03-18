import 'package:bloc_demo/models/userdetails/address_details_model.dart';
import 'package:flutter/material.dart';


class AddressDetails extends StatelessWidget{
  const AddressDetails({super.key, required this.model});

  final AddressDetailsModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(alignment: Alignment.topLeft, child: Text("Address Details")),
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
                              Icons.home_outlined,
                              color: Color(0xffaaaaaa),
                              size: 16,
                            ),
                          ),
                          SizedBox(width: 7),
                          Text(
                            "Street",
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
                        model.address!,
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
                            Icons.location_city_outlined,
                            color: Color(0xffaaaaaa),
                            size: 16,
                          ),
                        ),
                        SizedBox(width: 5),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "City",
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
                        model.city!,
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
                            "State",
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
                        model.state!,
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
                            Icons.pin,
                            color: Color(0xffaaaaaa),
                            size: 16,
                          ),
                        ),
                        SizedBox(width: 5),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Postal Code",
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
                        model.postalCode!,
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
                        model.country!,
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