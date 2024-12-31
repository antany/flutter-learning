import 'package:flutter/material.dart';

class CommonBackground extends StatelessWidget {
  final Widget child;
 
  const CommonBackground({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 77, 13, 161),
            const Color.fromARGB(255, 82, 22, 160),
            const Color.fromARGB(255, 83, 20, 164),
            const Color.fromARGB(255, 98, 45, 167),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),      
      child: child,
    );
  }
}