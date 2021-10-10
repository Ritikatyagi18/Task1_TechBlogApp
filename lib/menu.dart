import 'package:flutter/material.dart';
class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  static String id = 'menu';
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Choose an option',
                style: TextStyle(
                  fontFamily: "Pacifico",
                  shadows: <Shadow>[

                    Shadow(
                      offset: Offset(6.0, 6.0),
                      blurRadius: 2.0,
                      color: Color.fromARGB(120, 125, 125, 0),
                    ),
                  ],

                  fontSize: 40,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'technews');
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image(
                  width:300,
                  image: AssetImage('assets/images/t_image.png'),
                ),

              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'scholarships');
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image(
                  width:300,
                  image: AssetImage('assets/images/s_image.png'),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}