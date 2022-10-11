import 'package:flutter/material.dart';
import 'package:telegram_chat/components/filled_outline_button.dart';
import 'package:telegram_chat/inc/constants.dart';
import 'package:telegram_chat/models/Chat.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("WBGram Chat"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(
                  kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
              color: kPrimaryColor,
              child: Row(
                children: [
                  FillOutlineButton(press: () {}, text: "Recent message"),
                  const SizedBox(
                    width: kDefaultPadding,
                  ),
                  FillOutlineButton(
                    press: () {},
                    text: "Active",
                    isFilled: false,
                  )
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: chatsData.length,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                            vertical: kDefaultPadding * 0.75),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundImage:
                                  AssetImage(chatsData[index].image),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    chatsData[index].name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Opacity(
                                    opacity: 0.64,
                                    child: Text(
                                      chatsData[index].lastMessage,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ],
                              ),
                            )),
                            Column(
                              children: [
                                Opacity(
                                  opacity: 0.64,
                                  child: Text(
                                    chatsData[index].time,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  // height: 20,
                                  // width: 20,
                                  decoration: const BoxDecoration(
                                      color: kPrimaryColor,
                                      shape: BoxShape.circle),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.4),
                                    child: Text(
                                      "33",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
