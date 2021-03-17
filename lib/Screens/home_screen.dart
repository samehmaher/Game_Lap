import 'package:flutter/material.dart';
import 'package:game_lap/component/body_background.dart';
import 'package:game_lap/component/drawer_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({this.email});
  final String email;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: scaffoldKey,
      drawer: Drawer(
        child: Scaffold(
          body: bodyBackround(
            child: Column(
              children: [
                SizedBox(height: 10,),
                SafeArea(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                  ),
                ),
                SizedBox(height: 20,),
                Text('Mohamed Seada' , style: TextStyle(color: Colors.green , fontSize: 20),),
                SizedBox(height: 5,),
                Text(widget.email , textAlign: TextAlign.center , style: TextStyle(
                    color: Colors.white , fontSize: 16),),
                SizedBox(height: 20,),
                Divider(
                  indent: 20,
                  endIndent: 20,
                  thickness: 2,
                  color: Colors.green,
                ),
                Column(
                  children: [
                    DrawerList(icon: Icons.home_outlined ,text: 'Home', onTap:(){} , color: Colors.white, ),
                    DrawerList(icon: Icons.live_tv_outlined,text: 'Most Played',onTap:(){} , color: Colors.white,),
                    DrawerList(icon: Icons.local_offer_outlined,text: 'Best Offer Games' ,onTap:(){} , color: Colors.white,),
                    DrawerList(icon: Icons.local_grocery_store_outlined,text: 'Game Store',onTap:(){} , color: Colors.white,),
                    DrawerList(icon: Icons.gamepad_outlined,text: 'Categories',onTap:(){} , color: Colors.white,),
                    DrawerList(icon: Icons.star_border_outlined,text: 'Favourites',onTap:(){} , color: Colors.white,),
                    DrawerList(icon: Icons.add_to_queue_outlined,text: 'Recently Added',onTap:(){} , color: Colors.white,),
                    DrawerList(icon: Icons.person_outline,text: 'Profile',onTap:(){} , color: Colors.white,),
                    DrawerList(icon: Icons.login_outlined ,text: 'Logout', onTap:(){} , color: Colors.white,),


                  ],
                ),
              ],
            ),

          ),
        ),
      ),
      body: bodyBackround(
        child: ListView(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.menu , color: Colors.white,),
                  onPressed: () => scaffoldKey.currentState.openDrawer(),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}

