import 'package:abdallah_mansour_1stchallange/view/shared_widgets/custom_textfield.dart';
import 'package:abdallah_mansour_1stchallange/viewmodel/app_state_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class SingUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.black,
              ),
              onPressed: () {
                context
                    .read<AppState_Provider>()
                    .changeScaleAligmentUsingButton(Alignment.topLeft);
                Provider.of<AppState_Provider>(context, listen: false)
                    .changePageState();
              }),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Text(
                    'Let\'s Get Started!',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor * 27,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text(
                  'Create an account to Q Allure to get all featuers',
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).textScaleFactor * 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black45),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CustomTextField(
                  hintText: 'Account Name',
                  icon: FontAwesomeIcons.user,
                  inputAction: TextInputAction.next,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CustomTextField(
                  hintText: 'Email',
                  icon: FontAwesomeIcons.mailBulk,
                  inputAction: TextInputAction.next,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CustomTextField(
                  hintText: 'Phone',
                  icon: FontAwesomeIcons.mobileAlt,
                  inputAction: TextInputAction.next,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CustomTextField(
                  hintText: 'Password',
                  isPassword: true,
                  icon: FontAwesomeIcons.lock,
                  inputAction: TextInputAction.next,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CustomTextField(
                  hintText: 'Confirm Password',
                  isPassword: true,
                  icon: FontAwesomeIcons.lock,
                  inputAction: TextInputAction.next,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 30),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'CREATE',
                      style: TextStyle(
                          fontSize:
                              MediaQuery.of(context).textScaleFactor * 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      fixedSize: Size(size.width * .60, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
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
                          'Login',
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
        ));
  }
}
