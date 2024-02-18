import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app_list/widgets/add_button.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    double W = MediaQuery.of(context).size.width;
    double H = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            SizedBox(
              height: H * 0.25,
              width: W,
              child: const Center(
                  child: Text(
                'Tasks List',
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                    SizedBox(
                      height: H * 0.1,
                    ),
                    SvgPicture.asset("lib/images/tasks.svg"),
                    SizedBox(
                      height: H * 0.05,
                    ),
                    const Text(
                      "Add a task to get started",
                      style: TextStyle(fontSize: 17, color: Colors.black45),
                    ),
                  ]),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [AddButton()],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
