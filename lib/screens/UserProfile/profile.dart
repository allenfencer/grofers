import 'package:flutter/material.dart';
import 'package:grofers/colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon:Icon(Icons.keyboard_backspace_sharp,color: black,size: 28,),),
        title: Text('Profile',style: TextStyle(color: textBgColor),),
      ),
      body: ListView(
        children: [
          ListTile(
            minVerticalPadding: 20,
            isThreeLine: true,
            tileColor: white,
            contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            title: Text('Welcome',style: TextStyle(color: black,fontWeight: w700,fontSize: 25),),
            subtitle: Text('Login to view your profile',style: TextStyle(fontSize: 18),),
            trailing: MaterialButton(
              minWidth: 100,
              padding: EdgeInsets.all(5),
              color: textBgColor,
              onPressed: (){},
              height: 45,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              child: Text('Login',style: TextStyle(color: white,fontSize: 16,fontWeight: w700),),
            ),
          ),
          Divider(color: greyLight,),
          Container(
            margin: EdgeInsets.only(left:10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('My Information',style: TextStyle(color: greyDark,fontWeight: regular,fontSize: 18),),
                ),
                ListTile(leading: Icon(Icons.receipt_long_sharp,color: greyLight,),title: Text('My Orders',style: TextStyle(color: greyLight),),),
                ListTile(leading: Icon(Icons.location_city_sharp,color: greyLight),title: Text('My Addresses',style: TextStyle(color: greyLight)),),
                ListTile(leading: Icon(Icons.account_balance_wallet_sharp,color: greyLight),title: Text('My Wallet',style: TextStyle(color: greyLight)),),
                ListTile(leading: Icon(Icons.notifications_none_sharp,color: greyLight),title: Text('My Notification',style: TextStyle(color: greyLight)),),
              ],
            ),
          ),
          Divider(color: greyLight,),
          Container(
            margin: EdgeInsets.only(left:10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Sales and Offers',style: TextStyle(color: greyDark,fontWeight: regular,fontSize: 18),),
                ),
                ListTile(leading: Icon(Icons.offline_bolt_sharp,color: greyDark,),title: Text('Offer Zone',style: TextStyle(color: greyDark),),),
              ],
            ),
          ),
          Divider(color: greyLight,),
          Container(
            margin: EdgeInsets.only(left:10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Others',style: TextStyle(color: greyDark,fontWeight: regular,fontSize: 18),),
                ),
                ListTile(leading: Icon(Icons.support_sharp,color: greyDark,),title: Text('Customer Support',style: TextStyle(color: greyDark),),),
                ListTile(leading: Icon(Icons.star_border_sharp,color: greyDark),title: Text('Rate Us',style: TextStyle(color: greyDark)),),
                ListTile(leading: Icon(Icons.share_sharp,color: greyDark),title: Text('Share',style: TextStyle(color: greyDark)),),
                ListTile(leading: Icon(Icons.info_outline,color: greyDark),title: Text('About Us',style: TextStyle(color: greyDark)),),
              ],
            ),
          ),
          Divider(color: veryLightGrey,thickness: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Refer your friends and\nearn free products',style: TextStyle(color: black,fontSize: 25),),
                        SizedBox(height: 15,),
                        RichText(text: TextSpan(text:'Your friends also get free products.',style: TextStyle(color: greyLight,fontSize: 18))),
                        SizedBox(height: 20,),
                        RichText(text: TextSpan(text:'Refer Now',style: TextStyle(color: textBgColor,fontSize: 18,fontWeight: w700,))),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 200,
                  width: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Image.network('https://image.freepik.com/free-vector/refer-friend-concept-illustration_114360-6959.jpg',fit: BoxFit.cover,scale: 0.7,),
                ),
              ],
            ),
          ),
          Divider(color: veryLightGrey,thickness: 10,),
        ],
      ),
    );
  }
}
