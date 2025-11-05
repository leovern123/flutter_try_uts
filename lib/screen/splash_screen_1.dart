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

             const SizedBox(height: 30), //jarak image dan text

            
             const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

              const SizedBox(height: 10),

               // teks di bawahnya welcome
            const Text(
              "Apa kamu suka bunyi meow?\nkami siap membantu!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.0,
                color: Color.fromARGB(167, 24, 23, 23),
                height: 1.5, // jarak antar baris
              ),
            ),

            
          ],
        ),
        ),
    );
  }
}