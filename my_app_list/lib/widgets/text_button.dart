import 'package:flutter/material.dart';
import 'package:my_app_list/pages/tasks.dart';

class Text_button extends StatelessWidget {
  final String text;
  final Color couleur;

  const Text_button({super.key, required this.text, required this.couleur});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TasksPage()),
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(couleur),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          // height: MediaQuery.of(context).size.height * 0.03,
          child: Text(
            textAlign: TextAlign.center,
            text,
            //myTask,
            style: const TextStyle(fontSize: 22, color: Colors.white),
          ),
        ));
  }
}
