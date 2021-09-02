import 'package:abdallah_mansour_1stchallange/viewmodel/app_state_provider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      //this is multi provider in case you want to increase the providers
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppState_Provider(),
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Mansour login',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var myPage = context.watch<AppState_Provider>().pageState;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: AnimatedSwitcher(
          transitionBuilder: (Widget child, Animation<double> anim) =>
              ScaleTransition(
            scale: anim,
            alignment: context.watch<AppState_Provider>().scaleAligment,
            child: child,
          ),
          duration: Duration(milliseconds: 2000),
          child: myPage,
        ),
      ),
    );
  }
}
