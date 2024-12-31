import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [const Color.fromARGB(255, 81, 3, 95), const Color.fromARGB(255, 60, 2, 70)]
          )
        ),        
        child: child
      );
    
  }
}