import 'package:flutter/material.dart';
import 'package:grofers/styles.dart';

class HomeProduct extends StatelessWidget {
  final String categoryName;
  final String image1;
  final String image2;
  final String image3;
  final String image4;
  const HomeProduct(
      {Key key,
      this.categoryName,
      this.image1,
      this.image2,
      this.image3,
      this.image4,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(categoryName, style: headings()),
              trailing: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(width: 0.5, color: greyLight)),
                child: Text('See more', style: buttonText()),
              ),
            ),
          ),
          SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
              children: [
            Expanded(
              child: Image.network(image1==null?'':image1,),
            ),
            Expanded(
              child: Image.network(image2==null?'':image2),
            ),
            Expanded(
              child: Image.network(image3==null?'':image3),
            ),
            Expanded(
              child: Image.network(image4==null?'':image4),
            ),
          ]),
        ],
      ),
    );
  }
}
