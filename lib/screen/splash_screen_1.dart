import 'package:flutter/material.dart';



class MySplashScreen1 extends StatelessWidget {
  const MySplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
          Container(
            width: 250,
            height: 250,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
              image: DecorationImage(
                  image: AssetImage("assets/images/meow1.jpg"),
                  fit: BoxFit.cover, 
                  alignment: Alignment.center, 
                ),
              ),
            ),
          ],
        ),
        ),
    );
  }
}