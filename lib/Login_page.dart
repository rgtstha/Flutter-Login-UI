import 'package:flutter/material.dart';
import 'package:flutter_ui/style_guide.dart';
import 'widgets/CustomButton.dart';
import 'widgets/InputWidget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void changePasswordState() {
    setState(() {
      passwordState = !passwordState;
    });
  }

  bool isChecked = false;
  bool passwordState = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(43, 80, 43, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Login',
                  style: kHeadingStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  kHeadingText,
                  style: kBodyStyle,
                ),
                SizedBox(
                  height: 100,
                ),
                InputField(
                  labelTitle: 'E-mail',
                  trailingIcon: Icons.email,
                ),
                SizedBox(
                  height: 34.0,
                ),
                InputField(
                  labelTitle: 'Password',
                  showText: passwordState,
                  trailingIcon: Icons.remove_red_eye,
                  trailingIconTap: changePasswordState,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Theme(
                      data: Theme.of(context).copyWith(
                        unselectedWidgetColor: Color(0xFF8105D8),
                      ),
                      child: Checkbox(
                        checkColor: Colors.white,
                        activeColor: Color(0xFF8105D8),
                        value: isChecked,
                        onChanged: (newValue) {
                          setState(() {
                            isChecked = newValue;
                          });
                        },
                      ),
                    ),
                    Text(
                      'Remember Me',
                      style: kBodyStyle,
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        //Todo 1: Write code what to do if user pressed forget password.
                      },
                      child: Text(
                        'Forget Password?',
                        style: kForgetPasswordStyle,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80.0,
                ),
                TapButton(
                  onPressed: () {
                    // Todo 2: write code for login button pressed.
                  },
                  title: 'LOGIN',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
