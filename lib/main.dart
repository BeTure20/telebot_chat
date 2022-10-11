import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';
import 'package:telegram_chat/inc/themes.dart';
import 'package:telegram_chat/pages/login.dart';
import 'package:telegram_chat/splash.dart';

Future<void> main() async {
  await dotenv.load();
  final bottoken = dotenv.env['API_URL'];
  final username = (await Telegram(bottoken!).getMe()).username;

  // TeleDart uses longpoll by default if no update fetcher is specified.
  var teledart = TeleDart(bottoken, Event(username!));
  teledart.start();
  print(teledart);
  runApp(const MyAppLoad());
}

class MyAppLoad extends StatelessWidget {
  const MyAppLoad({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WBGram Chat',
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      // theme: ThemeData(

      //   primarySwatch: Colors.blue,
      //   fontFamily: "Poppins",
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: const SplashScreen(),
    );
  }
}
