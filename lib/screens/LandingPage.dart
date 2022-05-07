import 'package:docfor/Functions/spacefunction.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:universal_disk_space/universal_disk_space.dart';
class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: ElevatedButton(child:Text("Click me") ,onPressed:(){spaceclass().SpacePrint();} ,),
      ),
    );
  }
}
