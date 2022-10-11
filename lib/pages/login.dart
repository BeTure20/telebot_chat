import 'package:flutter/material.dart';
import 'package:telegram_chat/components/button.global.dart';
import 'package:telegram_chat/components/inputformtext.dart';
import 'package:telegram_chat/pages/homepage.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset(
              "assets/images/Logo_light.png",
              height: 148,
            ),
            const Spacer(
              flex: 1,
            ),
            MyTextForm(
              controller: usernameController,
              obscure: false,
              text: "Enter Username",
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextForm(
              controller: passwordController,
              obscure: true,
              text: "Enter Password",
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonGlobal(tapon: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            }),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      )),
    );
  }
}
