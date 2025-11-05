import 'package:flutter/material.dart';
import 'home_login.dart';

class MySplashScreen3 extends StatelessWidget {
  const MySplashScreen3({super.key});

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
                  image: AssetImage("assets/images/meow3.jpeg"),
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

           const SizedBox(height: 40),
           // 3 Bullet Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 15,
                  height: 15,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(102, 152, 152, 151), // non-aktif
                  ),
                ),
                Container(
                  width: 15,
                  height: 15,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(102, 152, 152, 151), // non-aktif
                  ),
                ),
                Container(
                  width: 15,
                  height: 15,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 33, 78, 33), // aktif
                  ),
                ),
              ],
            ),
            
          const SizedBox(height: 20),

            // Tombol Continue
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    // nanti diarahkan ke home_login.dart
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeLogin(),
                        ),
                        (Route<dynamic> route) => false,
                      );                 
                   
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF84a98c),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
        ),
    );
  }
}