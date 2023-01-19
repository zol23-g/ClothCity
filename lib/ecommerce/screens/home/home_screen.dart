import 'package:flutter/material.dart';
import 'package:e_shop/components/custom_bottom_nav_bar.dart';
import 'package:e_shop/constants.dart';
import 'package:e_shop/ecommerce/screens/create_shop/create_shop_screen.dart';
import 'package:e_shop/enums.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      floatingActionButton: Container(
        height: 60,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: kPrimaryColor,
            onPressed: () {
              Navigator.pushNamed(context, CreateShopScreen.routeName);
            },
            child: Icon(
              Icons.add_box,
            ),
            //backgroundColor: Colors.black87,
            elevation: 0,
            //color: Colors.black87,
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
