import 'package:flutter/material.dart';
import 'package:telegram_chat/inc/constants.dart';
import 'package:telegram_chat/pages/login.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          Image.asset("assets/images/welcome_image.png"),
          const Spacer(
            flex: 3,
          ),
          Text(
            "Welcome to our \WBGram App",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            "Free Chat is Here",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.color
                    ?.withOpacity(0.64)),
          ),
          const Spacer(
            flex: 3,
          ),
          FittedBox(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "Skip",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.color
                                ?.withOpacity(0.8),
                          ),
                    ),
                    SizedBox(
                      width: kDefaultPadding / 4,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.color
                          ?.withOpacity(0.8),
                    )
                  ],
                )),
          )
        ],
      )),
    );
  }
}
