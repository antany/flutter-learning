import 'package:flutter/material.dart';
import 'dart:math';

class Roller extends StatefulWidget {
  const Roller({super.key});

  @override
  State<Roller> createState() {
    return _RollerState();
  }
}

class _RollerState extends State<Roller> {
  var number = 0;
  var random = Random();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Current Dice Number: $number',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontStyle: FontStyle.normal,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        SizedBox(height: 20)
        ,ElevatedButton(
          onPressed: () {
            setState(() {
              number = random.nextInt(6) + 1;
            });
          },
          child: Text(
            'Roll Dice',
            style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 35, 28, 28),
              fontStyle: FontStyle.normal,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }
}
