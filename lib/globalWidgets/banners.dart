import 'package:flutter/material.dart';

class BannerTile extends StatelessWidget {
  final String bannerImage;
  final String headline;
  final String subHeadline;
  const BannerTile({Key key,this.bannerImage,this.headline,this.subHeadline}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          color: Colors.green[700]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(headline==null?'':headline,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700,letterSpacing: 0.8),),
                  Text(subHeadline==null?'':subHeadline,style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.normal,letterSpacing: 0.8),),
                ],
              ),
            ),
          ),
          Expanded(child: Container(
            margin: EdgeInsets.only(left: 15),
            alignment: Alignment.centerRight,
            child: Image.network(bannerImage,fit: BoxFit.cover,),
          )),
        ],
      ),
    );
  }
}
