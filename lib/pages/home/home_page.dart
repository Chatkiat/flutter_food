import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('FLUTTER-FOOD', style: GoogleFonts.fredokaOne(color: Colors.black)),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/foodd.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'THIS IS A HOMEPAGE',
                      style: GoogleFonts.fredokaOne(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown),
                    )
                  ],
                ),
              ),

          )),
    );
  }
}
