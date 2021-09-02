import 'package:abdallah_mansour_1stchallange/view/shared_widgets/custom_textfield.dart';
import 'package:abdallah_mansour_1stchallange/viewmodel/app_state_provider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 20, bottom: 6),
                width: size.width * .55,
                child: Image(
                  image: AssetImage('assets/img/appicontest.png'),
                ),
              ),
            ),
            Text(
              'Welcome back!',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).textScaleFactor * 25,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Log in to your existant account of Q Allure',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).textScaleFactor * 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black45),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 30, 20),
              child: CustomTextField(
                hintText: 'Account Name',
                icon: FontAwesomeIcons.user,
                inputAction: TextInputAction.next,
              ),
            ),
            CustomTextField(
              isPassword: true,
              icon: FontAwesomeIcons.lock,
              hintText: 'Password',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).textScaleFactor * 15,
                      color: Colors.black54),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 30),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'LOG IN',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor * 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    fixedSize: Size(size.width * .60, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )),
            ),
            Text(
              'Or connect using',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).textScaleFactor * 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black45),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: Text(
                      'Facebook',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor * 17,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue.shade800,
                      elevation: 2,
                      fixedSize: Size(size.width * .40, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    icon: Icon(FontAwesomeIcons.facebookF),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: Text(
                      'Google',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor * 17,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange.shade900,
                      elevation: 2,
                      fixedSize: Size(size.width * .40, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    icon: Icon(FontAwesomeIcons.google),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor * 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black45),
                  ),
                  TextButton(
                      onPressed: () {
                        context
                            .read<AppState_Provider>()
                            .changeScaleAligmentUsingButton(
                                Alignment.bottomRight);
                        Provider.of<AppState_Provider>(context, listen: false)
                            .changePageState();
                      },
                      child: Text(
                        'Sing Up',
                        style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).textScaleFactor * 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
