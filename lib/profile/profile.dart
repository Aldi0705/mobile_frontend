import 'package:flutter/material.dart';
import 'package:myapp/widget/custom_text.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomText(
        text: 'Hai', 
        style: TextStyle(
          color: Colors.blue
        )),
    );
  }
}