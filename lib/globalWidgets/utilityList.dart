import 'package:flutter/material.dart';
import 'package:grofers/globalWidgets/productTile.dart';

class UtilityList extends StatelessWidget {
  final List p1;
  const UtilityList({Key key,this.p1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 20),
      height: MediaQuery.of(context).size.height*0.35,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: p1.length,
        itemBuilder: (BuildContext context,index){
          return ProductTile(imageUrl: p1[index].imageUrl,productName: p1[index].productName,newPrice: p1[index].newPrice,oldPrice: p1[index].oldPrice,productWeight: p1[index].productWeight,);
        },
      ),
    );
  }
}
