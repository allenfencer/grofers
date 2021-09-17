import 'package:flutter/material.dart';
import 'package:grofers/styles.dart';

class ProductTile extends StatelessWidget {
  final String imageUrl;
  final String newPrice;
  final String oldPrice;
  final String productName;
  final String productWeight;
  const ProductTile({Key key,this.imageUrl,this.productWeight,this.productName,this.oldPrice,this.newPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 180,
      margin: EdgeInsets.only(left: 8,right: 8,top: 5,bottom: 5),
      padding: EdgeInsets.only(left: 15,right: 15,bottom: 5),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey[200],blurRadius: 5,spreadRadius: 0.3),
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network(imageUrl,height: 130,fit: BoxFit.cover,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('₹$newPrice',style: newPriceStyle(),),
              SizedBox(width: 5,),
              Text(oldPrice,style: oldPriceStyle(),),
            ],
          ),
          Text(productName,style: subHeadings(),overflow: TextOverflow.ellipsis,),
          Text(productWeight,style: subHeadings(),),
          MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              color: Colors.grey[100],
              elevation: 0,
              onPressed: (){},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              child: Text('ADD',style: buttonText(),),
          ),
        ],
      ),
    );
  }
}
