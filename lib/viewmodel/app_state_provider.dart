import 'package:abdallah_mansour_1stchallange/view/login_page.dart';
import 'package:abdallah_mansour_1stchallange/view/singup_page.dart';
import 'package:flutter/cupertino.dart';

class AppState_Provider extends ChangeNotifier {
  var _isLogin = true; //check if you are in login page
  Widget pageState = LoginPage();
  Alignment scaleAligment = Alignment.bottomRight;

  changeScaleAligmentUsingButton(Alignment x) {
    //to change transition alignment when user press button
    scaleAligment = x;
    notifyListeners();
  }

  changePageState() {
    //change page from login to sing up
    if (_isLogin) {
      _isLogin = !_isLogin;
      pageState = SingUpPage();
      notifyListeners();
    } else {
      _isLogin = !_isLogin;
      pageState = LoginPage();
      notifyListeners();
    }
  }
}
