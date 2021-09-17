import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CarouselWidget extends StatelessWidget {
  final String image1;
  final String image2;
  final String image3;
  final String image4;
  final String image5;
  final String image6;
  const CarouselWidget({Key key,this.image1,this.image2,this.image3,this.image4,this.image5,this.image6}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.3,
      width: MediaQuery.of(context).size.width,
      child: Carousel(
        autoplay: false,
        boxFit: BoxFit.fill,
        dotColor: Colors.transparent,
        dotSize: 0,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 5,
        images: [
          Image.network(image1),
          Image.network(image2),
          Image.network(image3),
          Image.network(image4),
          Image.network(image5),
          Image.network(image6),
        ],
      ),
    );
  }
}
