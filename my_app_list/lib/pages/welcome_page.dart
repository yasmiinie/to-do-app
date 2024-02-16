import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app_list/widgets/text_button.dart';

class Welcome_page extends StatelessWidget {
  const Welcome_page({super.key});

  @override
  Widget build(BuildContext context) {
    var largeur = MediaQuery.of(context).size.width;
    var hauteur = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('lib/images/welcome_image.svg'),
            SizedBox(
              height: hauteur * 0.06,
            ),
            Text(
              'Welcome to your \n      To-Do app',
              maxLines: 2,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: hauteur * 0.06,
            ),
            Text_button(text: 'Get Started', couleur: Colors.amber)
          ],
        ),
      )),
    );
  }
}
