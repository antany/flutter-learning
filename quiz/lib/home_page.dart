import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.callback, {super.key});

  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/ideas.png',
          color: const Color.fromARGB(96, 255, 255, 255),
          height: 200,
        ),
        SizedBox(height: 40),
        Text('Test your knowledge !',
            style: GoogleFonts.montserrat(
                color: const Color.fromARGB(96, 255, 255, 255),
                decoration: TextDecoration.none,
                fontSize: 30,
                fontWeight: FontWeight.normal)),
        SizedBox(height: 40),
        ElevatedButton(
          onPressed: () {
            callback('quiz');
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: const Color.fromARGB(238, 255, 255, 255),
            backgroundColor: const Color.fromARGB(95, 220, 193, 224),
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            textStyle: GoogleFonts.montserrat(
                color: const Color.fromARGB(255, 88, 7, 102),
                decoration: TextDecoration.none,
                fontSize: 20,
                fontWeight: FontWeight.normal),
          ),
          child: Text('Start Quiz'),
        ),
      ],
    );
  }
}
