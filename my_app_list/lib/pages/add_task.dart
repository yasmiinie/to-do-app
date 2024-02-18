import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app_list/widgets/text_button.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    double W = MediaQuery.of(context).size.width;
    double H = MediaQuery.of(context).size.height;
    TextEditingController myTask = TextEditingController();
    return Scaffold(
        backgroundColor: Colors.blue,
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.blue),
              height: H * 0.25,
              width: W,
              child: const Center(
                  child: Text(
                'New Task',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              )),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              height: H * 0.75,
              width: W,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "What are planning ?",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        TextField(
                          controller: myTask,
                          decoration: const InputDecoration(),
                        ),
                      ]),
                  const Text_button(text: "Create", couleur: Colors.amber),
                ],
              ),
            ),
          ],
        ));
    ;
  }
}
