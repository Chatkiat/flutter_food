import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class FoodListPage extends StatelessWidget {
  static const routeName = '/foodlist';

  const FoodListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'FOOD MENU',
          textAlign: TextAlign.center,
          style: GoogleFonts.fredokaOne(fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey),
        ),
      ),
    );
  }
}