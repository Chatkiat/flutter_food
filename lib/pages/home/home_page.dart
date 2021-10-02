import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_food/pages/home/profile_page/profile.dart';
import 'package:flutter_food/pages/home/food_pages/food.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _subPageIndex =0;
  var _selectedButtonNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text(_subPageIndex == 0 ? 'FLUTTER FOOD' : 'Profile',
            style: GoogleFonts.fredokaOne(color: Colors.white)),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black87,
                  ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(40.0),
                              child: Container(
                                width: 80.0,
                                height: 80.0,
                                child: Image.asset('assets/images/cat2.jpg'),
                              )),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Chatkiart Sriphuttha',
                            style: GoogleFonts.fredokaOne(fontSize: 22.0, color: Colors.white),
                          ),
                          Text(
                            'mrchatkiat409@gmail.com',
                            style: TextStyle(fontSize: 15.0, color: Colors.white70),
                          ),
                        ],
                      ),
                    ),

                ),
              ],
            ),
            ListTile(
              title: _buildDrawerItem(Icon(Icons.fastfood), 'Food'),
              onTap: () => _showSubPage(0),
            ),
            ListTile(
              title: _buildDrawerItem(Icon(Icons.person), 'Profile'),
              onTap: () => _showSubPage(1),
            ),

          ],
        ),
      ),


      body: Container(
          child: _buildSubPage(),color: Colors.black26,
      ),
    );

  }
  _showSubPage(int index) {
    setState(() {
      _subPageIndex = index;
    });
    Navigator.of(context).pop();
  }

  Widget _buildSubPage() {
    switch (_subPageIndex) {
      case 0:
        return FoodPage();
      case 1:
        return Profile();
      default:
        return SizedBox.shrink();
    }
  }

  /*Widget _buildSubPage() {
    switch (_subPageIndex) {
      case 0: // home page
        return Center(
          child: Text('THIS IS A HOME PAGE',
              style: Theme.of(context).textTheme.headline1),
        );
      case 1:
        return Center(
          child: Text('PAGE 1',style: Theme.of(context).textTheme.headline1),

        );
      case 2:
        return Center(
          child: Text('PAGE 2',style: Theme.of(context).textTheme.headline1),
        );
      default:
        return SizedBox.shrink();
    }
  }*/
  Row _buildDrawerItem(Widget icon, String title) {
    return Row(children: [
      icon,
      SizedBox(width: 8.0),
      Text(title,style: GoogleFonts.fredokaOne(),),
    ]);
  }
}
