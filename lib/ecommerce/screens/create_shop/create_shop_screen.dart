import 'package:flutter/material.dart';

import 'components/body.dart';

class CreateShopScreen extends StatelessWidget {
  static String routeName = "/create_shop";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create a Shop'),
      ),
      body: Body(),
    );
  }
}
