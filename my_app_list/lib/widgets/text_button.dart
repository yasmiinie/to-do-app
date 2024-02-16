import 'package:flutter/material.dart';

class Text_button extends StatelessWidget {
  final String text;
  final Color couleur;
  const Text_button({super.key, required this.text, required this.couleur});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(couleur)),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          // height: MediaQuery.of(context).size.height * 0.03,
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ));
  }
}
