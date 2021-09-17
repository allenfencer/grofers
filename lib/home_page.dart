import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grofers/colors.dart';
import 'package:grofers/screens/UserProfile/profile.dart';
import 'package:grofers/screens/categories.dart';
import 'package:grofers/screens/home.dart';
import 'package:grofers/screens/membership.dart';
import 'package:grofers/screens/offers/offers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex=0;
  List <Widget> screens=[
    Home(),
    Categories(),
    Offers(),
    Membership(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: Icon(Icons.location_on_outlined),
        title: Text('Grofers'),
        centerTitle: true,
        bottom: AppBar(
          toolbarHeight: 60,
          title: Container(
            margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
            padding: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabled: false,
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: greyLight)),
                disabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1,color: greyLight)),
                contentPadding: EdgeInsets.all(12),
                enabledBorder: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                  hintText: 'Search products & categories ',
                hintStyle: Theme.of(context).appBarTheme.textTheme.subtitle2,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: greyDark,width: 5))
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
              )),
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
              }, icon: Icon(Icons.person),iconSize: Theme.of(context).appBarTheme.actionsIconTheme.size,
          ),
        ],
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category,),label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.new_releases_outlined,),label: 'Offers'),
          BottomNavigationBarItem(icon: Icon(Icons.card_membership_sharp,),label: 'Membership'),
        ],
      ),
    );
  }
}
