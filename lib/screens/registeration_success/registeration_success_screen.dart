import 'package:flutter/material.dart';

import 'components/body.dart';

class RegisterationSuccessScreen extends StatelessWidget {
  static String routeName = "/registeration_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Registeration Success"),
      ),
      body: Body(),
    );
  }
}
