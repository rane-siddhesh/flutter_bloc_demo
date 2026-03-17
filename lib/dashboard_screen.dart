import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget{
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard", style: TextStyle(color: Colors.white),),backgroundColor: Color(0xff0b090a),),
      body: Container(
        color: Color(0xff0b090a),
        child: Center(
          child: Text("key", style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }

}