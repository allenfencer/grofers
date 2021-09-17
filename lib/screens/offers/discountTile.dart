import 'package:flutter/material.dart';
import 'package:grofers/colors.dart';

class DiscountTile extends StatelessWidget {
  final String text;
  final Color color1;
  final Color color2;
  const DiscountTile({Key key,this.text,this.color1,this.color2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          //TODO: ADD ONTAP
          print(text);
        },
        child: Container(
          padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          margin: EdgeInsets.all(5),
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                color1,
                color2,
              ]
            )
          ),
          child: Text(text,style: TextStyle(fontSize:28,fontWeight: bold,color: black),textAlign: TextAlign.center,)
        ),
      ),
    );
  }
}
