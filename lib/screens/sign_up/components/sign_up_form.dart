import 'package:flutter/material.dart';
import 'package:e_shop/components/custom_surfix_icon.dart';
import 'package:e_shop/components/default_button.dart';
import 'package:e_shop/helper/keyboard.dart';
import 'package:e_shop/components/form_error.dart';
import 'package:e_shop/models/login_and_registeration.dart';
import 'package:e_shop/screens/complete_profile/complete_profile_screen.dart';
import 'package:e_shop/screens/registeration_success/registeration_success_screen.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? username;
  String? password;
  String? conformPassword;
  String emailResponse = "";
  String usernameResponse = "";
  bool remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  // void register(String? username, String? email, String? password) async {
  //   AuthService authService = AuthService();
  //   try {
  //     RegisterationResponse? registerationResponse =
  //         await authService.registeration(username, email, password);
  //     if (registerationResponse != null) {
  //       if (registerationResponse.email != null) {
  //         registerationResponse.email!.forEach((element) {
  //           setState(() {
  //             emailResponse = element;
  //           });
  //           print(element);
  //         });
  //       }
  //       if (registerationResponse.username != null) {
  //         registerationResponse.username!.forEach((element) {
  //           setState(() {
  //             usernameResponse = element;
  //           });
  //           print(element);
  //         });
  //       }
  //       if (registerationResponse.token != null) {
  //         print(registerationResponse.token!);
  //         KeyboardUtil.hideKeyboard(context);
  //         Navigator.pushNamed(context, RegisterationSuccessScreen.routeName);
  //       }
  //     }
  //   } catch (e) {
  //     print('Fields are Empty');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildUsernameFormField(),
          Text(
            usernameResponse != null ? usernameResponse : '',
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildEmailFormField(),
          Text(
            emailResponse != null ? emailResponse : '',
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildConformPassFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(35)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen
                 //register(username, email, password);
//                Navigator.pushNamed(context, RegisterationSuccessScreen.routeName);

              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildConformPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => conformPassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (password == conformPassword) {
          removeError(error: kMatchPassError);
        }
        conformPassword = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        password = value;
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        emailResponse = "";
        email = value;
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        }
        if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildUsernameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => username = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kUserNameError);
        }
        usernameResponse = "";
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kUserNameError);
          return "";
        }
        username = value;
        return null;
      },
      decoration: InputDecoration(
        labelText: "Username",
        hintText: "Enter your Username",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }
}
