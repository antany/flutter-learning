import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.buttonText, {super.key, this.action});

  final String buttonText;
  final Function? action;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: (){
        action!();        
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromARGB(238, 255, 255, 255),
        backgroundColor: const Color.fromARGB(95, 220, 193, 224),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        minimumSize: Size(300, 40),
        textStyle: GoogleFonts.montserrat(
            color: const Color.fromARGB(255, 88, 7, 102),
            decoration: TextDecoration.none,
            fontSize: 15,
            fontWeight: FontWeight.normal),
      ),
      child: Text(buttonText),
    );
  }
}
