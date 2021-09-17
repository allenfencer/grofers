import 'package:flutter/material.dart';
import 'package:grofers/colors.dart';

class KitchenTile extends StatelessWidget {
  final String bgImage;
  final String heading;
  final String price;
  const KitchenTile({Key key,this.bgImage,this.heading,this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Image.network(bgImage),
          Positioned(
            top: 30,left: 15,
            child: Text(heading,style: TextStyle(fontSize: 20,color: white,fontWeight: w700),),
          ),
          Positioned(
            top: 70,left: 15,
            child: Text(price,style: TextStyle(fontSize: 18,color: white,fontWeight: w700),),
          ),
        ],
      ),
    );
  }
}
