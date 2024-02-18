import 'package:flutter/material.dart';
import 'package:my_app_list/pages/add_task.dart';
import 'package:my_app_list/pages/welcome_page.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    double W = MediaQuery.of(context).size.width;
    double H = MediaQuery.of(context).size.height;
    return Container(
      height: W * 0.2,
      width: W * 0.2,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(50)),
      child: IconButton(
          color: Colors.white,
          iconSize: 50,
          icon: const Icon(Icons.add),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AddTask()));
          }),
    );
  }
}
