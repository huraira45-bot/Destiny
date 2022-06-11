import 'package:flutter/material.dart';

import 'app_brain.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/background.png'),
                    fit: BoxFit.cover)),
            child: Center(child: Desitny_main_Screen()),
          ),
        ),
      ),
    ),
  );
}

class Desitny_main_Screen extends StatefulWidget {
  const Desitny_main_Screen({Key? key}) : super(key: key);

  @override
  State<Desitny_main_Screen> createState() => _Desitny_main_ScreenState();
}

class _Desitny_main_ScreenState extends State<Desitny_main_Screen> {
  app_brain brain = app_brain();
  Widget button(int choice,String choices,Color btn_color) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextButton(

            style: TextButton.styleFrom(backgroundColor: btn_color),
          onPressed: () {
            setState(() {
              if (choice == 1)
                restart(brain.choice1_click());
              else
                restart(brain.choice2_click());
            });

          },

          child: Text(
            choices,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
void restart(bool update){
    if(update)
      {setState((){
        brain.restart();
      });
      }
}
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Center(
            child: Text(
              brain.get_story_title(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          flex: 5,
        ),
        button(1,brain.get_choice1(),Colors.red),
        Visibility(
        child: button(2,brain.get_choice2(),Colors.amberAccent),
          visible: brain.check_visblity(),
        )],
    );
  }
}
