import 'package:flutter/material.dart';
import 'package:grofers/globalWidgets/HomeUtilitiesTile.dart';
import 'package:grofers/globalWidgets/imageCarousel.dart';
import 'package:grofers/globalWidgets/utilityList.dart';
import 'package:grofers/model/productTileModel.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,h=190/layout-engine/2021-09/coming-soon-10_0.png?613f493793357',fit: BoxFit.fill,),
              Image.network('https://cdn.grofers.com/layout-engine/2021-08/Welcome_Banner_New_User-gen-2-1.gif?613f4939866b6',fit: BoxFit.cover,),
              Row(
                children: [
                  Expanded(child: Image.network('https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=427,h=190/layout-engine/2021-08/Welcome_Banner_New_User_Code-1_1.png?613f493a2a9c1')),
                  Expanded(child: Image.network('https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=427,h=190/layout-engine/2021-08/Welcome_Banner_New_User-Code-2_1.png?613f493a82c8f')),
                ],
              ),
              HomeProduct(categoryName: 'Biscuits, snacks & chocolates',image1: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=197,h=281/layout-engine/2021-09/01_33.png?614093a107ee5',image2: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=197,h=281/layout-engine/2021-09/02_32.png?614093a17298f',image3: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=197,h=281/layout-engine/2021-09/03_30.png?614093a1db8a3',image4: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=197,h=281/layout-engine/2021-09/04_29.png?614093a24743d',),
              UtilityList(p1: ProductTileModel.chocoBiscuits,),
              HomeProduct(categoryName: 'Beverages',image1: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=207,h=295/layout-engine/2021-09/01_31.png?61420db9da5b9',image2: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=207,h=295/layout-engine/2021-09/02-1_0.png?61420dba35412',image3: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=207,h=295/layout-engine/2021-09/03_28.png?61420dba918d4',image4: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=207,h=295/layout-engine/2021-09/04_27.png?61420dbaf3aa5',),
              UtilityList(p1: ProductTileModel.beveragesList,),
              HomeProduct(categoryName: 'Fruits & Vegetables',image1: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=279,h=399/layout-engine/2021-09/01_37.png?61420dbc905e6',image2: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=279,h=399/layout-engine/2021-09/02_36.png?61420dbcf2018',image3: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=279,h=399/layout-engine/2021-09/03_33.png?61420dbed44ed',image4: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=279,h=399/layout-engine/2021-09/04_32.png?61420dc116073',),
              UtilityList(p1: ProductTileModel.fruitsVeggie,),
              HomeProduct(categoryName: 'Breakfast & Diary',image1: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=279,h=399/layout-engine/2021-09/01_34.png?61420dc36864a',image2: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=279,h=399/layout-engine/2021-09/02_33.png?61420dc3b7bca',image3: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=279,h=399/layout-engine/2021-09/03_31.png?61420dc41c09a',image4: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=279,h=399/layout-engine/2021-09/03_31.png?61420dc41c09a',),
              UtilityList(p1: ProductTileModel.bfDiary,),
              CarouselWidget(image1: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,h=524/layout-engine/2021-09/Home-Page_1320x660.jpg?6141f95016183',image2: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,h=524/layout-engine/2021-09/Trisbix-Pizza-Sour-Homepage-post-launch_1320x660.jpg?6141f9570676d',image3: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,h=524/layout-engine/2021-09/Powders_Homepage-1530-1.jpg?6141f95a7fcff',image4: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,h=632/layout-engine/2021-08/Homepage_TOT-3.jpg?6141fe6e09969',image5: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,h=632/layout-engine/2021-09/Stayfree_DayNight_1320x660-1.jpg?6141f9604ce40',image6: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,h=632/layout-engine/2021-09/HPB-15th.jpg?6141f96250404',),
              SizedBox(height: 15,),
              HomeProduct(categoryName: 'Noodles & Instant Foods',image1: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=312,h=446/layout-engine/2021-09/01_30.png?614334610da48',image2: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=312,h=446/layout-engine/2021-09/02_29.png?614334616bb5b',image3: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=312,h=446/layout-engine/2021-09/03_27.png?61433461b971b',image4: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=312,h=446/layout-engine/2021-09/04_26.png?614334620ca63',),
              UtilityList(p1: ProductTileModel.instantFoods,),
              HomeProduct(categoryName: 'Non-veg Delights',image1: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=312,h=446/layout-engine/2021-09/01_10.png?6143346a9be85',image2: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=312,h=446/layout-engine/2021-09/02_11.png?6143346af1d12',image3: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=312,h=446/layout-engine/2021-09/03_10.png?6143346b65343',image4: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=312,h=446/layout-engine/2021-09/04_9.png?6143346bbb360',),
              UtilityList(p1: ProductTileModel.nonVeg,),
              HomeProduct(categoryName: 'Personal Care',image1: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=312,h=446/layout-engine/2021-09/01_27.png?6143346680a26',image2: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=312,h=446/layout-engine/2021-09/02_26.png?61433466cb57a',image3: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=312,h=446/layout-engine/2021-09/03_24.png?6143346733006',image4: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=312,h=446/layout-engine/2021-09/04_23.png?6143346792db9',),
              UtilityList(p1: ProductTileModel.personalCare,),
              HomeProduct(categoryName: 'Kitchen Accessories',image1: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=276,h=394/layout-engine/2021-09/01_29.png?6144760ee757e',image2: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=276,h=394/layout-engine/2021-09/02_28.png?6144760f51727',image3: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=276,h=394/layout-engine/2021-09/03_26.png?6144760fa81c0',image4: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=276,h=394/layout-engine/2021-09/04_25.png?6144761010675',),
              UtilityList(p1: ProductTileModel.kitchenAccessories,),
              HomeProduct(categoryName: 'Household Items',image1: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=276,h=394/layout-engine/2021-09/01_32.png?6144760cb52c1',image2: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=276,h=394/layout-engine/2021-09/02_31.png?6144760d251c5',image3: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=276,h=394/layout-engine/2021-09/03_29.png?6144760d7ee4a',image4: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=276,h=394/layout-engine/2021-09/04_28.png?6144760dde8a5',),
              UtilityList(p1: ProductTileModel.householdItems,),
              HomeProduct(categoryName: 'Wellness Store',image1: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=276,h=394/layout-engine/2021-09/01_24.png?614476308477c',image2: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=276,h=394/layout-engine/2021-09/02_23.png?61447630d9251',image3: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=276,h=394/layout-engine/2021-09/03_21.png?614476313b7fc',image4: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=276,h=394/layout-engine/2021-09/04_20.png?61447631964e7',),
              UtilityList(p1: ProductTileModel.wellnessStore,),
              HomeProduct(categoryName: 'Kitchen Essentials',image1: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=276,h=394/layout-engine/2021-09/01_23.png?61447636e63ef',image2: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=276,h=394/layout-engine/2021-09/02_22.png?6144763758e17',image3: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=276,h=394/layout-engine/2021-09/03_20.png?61447637b0c47',image4: 'https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,w=276,h=394/layout-engine/2021-09/04_19.png?6144763811736',),
              UtilityList(p1: ProductTileModel.kitchenEssentials,),
              HomeProduct(categoryName: 'Kids Store',),
              UtilityList(p1: ProductTileModel.kidsStore,),
              HomeProduct(categoryName: 'Sports Store',),
              UtilityList(p1: ProductTileModel.sportsStore,),
              Container(
                margin: EdgeInsets.only(top: 5,bottom: 25),
                  height: MediaQuery.of(context).size.height*0.15,
                  child: Image.network('https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=50,h=231/layout-engine/2021-09/Home-page-banner-for-donation-1.jpg?6144b199c1fa4',fit: BoxFit.fill,)),
            ],
          ),
        ),
      ),
    );
  }
}
