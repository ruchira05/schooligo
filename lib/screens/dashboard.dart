import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schooligo_1/constants/colours.dart';
import 'package:schooligo_1/constants/image_strings.dart';
import 'package:schooligo_1/screens/map.dart';
import 'package:location/location.dart' as loc;

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  final loc.Location location = loc.Location();
  StreamSubscription<loc.LocationData>? _locationSubscription;

  @override
  void initState(){
    super.initState();
    _requestPermission();
  }
  
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(

      body: Column(
        children: [
          Image.asset(logoStrPNG),
          Container(
            height: 50,
            width: width,
            color: yellow,
            child: OutlinedButton(
              onPressed: (){
                Get.to(() => MyMap());
              },
              child: Text("Map"),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.black
              ),
            ),
          ),
          Container(

          ),
        ],
      ),
    );
  }
}

class _requestPermission {
}
