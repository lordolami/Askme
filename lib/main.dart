import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:askme_app/constants/constants.dart';
import 'package:askme_app/ui/splashscreen.dart';
import 'package:askme_app/ui/get_started.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "askme_app",
      theme: ThemeData(primaryColor: Colors.green[900]),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) =>  SplashScreen(),
        GET_STARTED: (BuildContext context) => GetStarted(),
        SIGN_UP: (BuildContext context) => SignUp(),
              },
              initialRoute: SPLASH_SCREEN,
            );
          }
        }
        