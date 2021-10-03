import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class FoodListPage extends StatefulWidget {
  static const routeName = '/foodlist';

  const FoodListPage({Key? key}) : super(key: key);

  @override
  _FoodListPageState createState() => _FoodListPageState();

}
class _FoodListPageState extends State<FoodListPage> {
  var items = [
    {
      "id": 1,
      "name":'ข้าวไข่เจียว',
      'price':25,
      'image': 'kao_kai_jeaw.jpg'
    }
  ];



  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context,int index){
         Map<String,dynamic> item = items[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/image/${item['image']}',
                    width: 60.0,
                    height: 60.0,
                  ),
                  Text(
                       item['name'],
                    style: GoogleFonts.fredokaOne(fontSize: 20.0)
                  ),
                ],
              ),
            ),
          );

        },

      ),
    );
  }
}