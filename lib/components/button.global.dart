import 'package:flutter/material.dart';
import 'package:telegram_chat/inc/constants.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({super.key, required this.tapon});
  final void Function()? tapon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapon,
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            )
          ],
        ),
        child: const Text(
          "Sign In",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
