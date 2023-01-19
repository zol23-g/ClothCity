import 'package:flutter/material.dart';
import 'package:e_shop/constants.dart';
import 'package:e_shop/size_config.dart';

import 'create_shop_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text("Create a Shop", style: headingStyle),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                CreateShopForm(),
                SizedBox(height: getProportionateScreenHeight(30)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
