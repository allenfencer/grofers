import 'package:flutter/material.dart';
import 'package:grofers/globalWidgets/banners.dart';
import 'package:grofers/model/productTileModel.dart';
import 'package:grofers/styles.dart';
import 'package:grofers/screens/offers/discountTile.dart';
import 'package:grofers/screens/offers/kitchenTile.dart';
import 'package:grofers/globalWidgets/productTile.dart';

class Offers extends StatelessWidget {
  const Offers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        children: [
          Text('Offer Zone',style: banner(),),
          SizedBox(height: 10,),
          Text('The best of offers on everyday essentials for you',style: subHeadings(),),
          SizedBox(height:20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DiscountTile(text: 'BUY 1 GET 1 FREE',color1: Color(0xffc9ffbf),color2: Color(0xffffafbd),),
              DiscountTile(text: 'UNDER ₹ 49 STORE',color1: Color(0xff70e1f5),color2: Color(0xffffd194),),
              DiscountTile(text: 'MIN 30% OFF',color1: Color(0xffaaffa9),color2: Color(0xff11ffbd),),
            ],
          ),
          SizedBox(height: 20,),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('Top Savers Today!',style: headings()),
            trailing: MaterialButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(width: 0.5,color: greyLight)),
              child: Text('See all',style: buttonText()),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: MediaQuery.of(context).size.height*0.35,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ProductTileModel.topSavers.length,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context,index){
                return ProductTile(imageUrl: ProductTileModel.topSavers[index].imageUrl,newPrice: ProductTileModel.topSavers[index].newPrice,oldPrice: ProductTileModel.topSavers[index].oldPrice,productName: ProductTileModel.topSavers[index].productName,productWeight: ProductTileModel.topSavers[index].productWeight,);
              },
            ),
          ),
          SizedBox(height: 50,),
          //KITCHEN GRID
          Text('Kitchen & Furnishings',style: headings()),
          Container(
            margin: EdgeInsets.only(top: 30,bottom: 30),
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 15,mainAxisSpacing: 15),
              itemBuilder: (BuildContext context,index){
                return KitchenTile();
              }),
          ),
          BannerTile(bannerImage: 'https://bulbandkey.com/blog/wp-content/uploads/2020/03/Vegetables-Feature.jpg',headline: 'Best Deals',subHeadline: 'on fruits & veggies',),
          SizedBox(height: 30,),
          //HAPPY AT HOME SALE
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('Happy at Home Sale!',style: headings(),),
            subtitle: Text('Great Prices and Quality Guaranteed',style: subHeadings(),),
            trailing: MaterialButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(width: 1,color: textBgColor)),
              child: Text('view all',style: buttonText(),),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: MediaQuery.of(context).size.height*0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: null,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context,index){
                return ProductTile();
              },
            ),
          ),
          SizedBox(height: 50,),
        ],
      ),
    );
  }
}
