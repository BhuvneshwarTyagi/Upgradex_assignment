import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items_1=["Earphones","Women","Girls","Tops","Men","Bags","Home","Shoes"];
  static const List<String> price=["1099","499","799","599","1199","499","599","699"];
  final PageController _pcontroller = PageController();
  var currentPage=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (timer) {setState(() {
      if(currentPage==4){
        currentPage=0;
      }
      else{
        currentPage++;
      }
    });
    _pcontroller.animateToPage(currentPage, duration: const Duration(milliseconds: 900), curve: Curves.linear);});
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawer(

        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black,size: 25),
        backgroundColor: Colors.white,

        title: SizedBox(
          width: size.width*0.12,
          height: size.height*0.03,
          child: const Image(
            image: AssetImage("assets/images/logo1.png"),
            fit: BoxFit.fill,
          ),
        ),
        actionsIconTheme: const IconThemeData(color: Colors.black,size: 25,weight: 1),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search,),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.favorite_border,),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.shopping_bag_outlined,),
          ),
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Circular Icon List view
            SizedBox(
              height: size.height*0.15,
              child: ListView.builder(
                  padding:  const EdgeInsets.only(top: 16,),
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) =>
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 8),
                            height: size.height*0.083,
                            width: size.height*0.083,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                                image: DecorationImage(image: AssetImage("assets/images/img_$index.png"),fit: BoxFit.fill)
                            ),
                          ),
                          AutoSizeText(
                           items_1[index],
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300)
                          ),
                        ],
                      )
              ),
            ),
            //image
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                height: size.height*0.32,
                width: size.width*1,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/sale_1.jpg"),
                    fit: BoxFit.fill

                  )
                ),
              ),
            ),
            //Sign UP for Exciting deals! button
            Padding(
              padding:  EdgeInsets.only(top: size.height*0.01,bottom: size.height*0.01),
              child: Container(
                height: size.height*0.04,
                width: size.width*0.94,
                decoration: const BoxDecoration(
                    color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      "Sign Up For Exciting Deals!",
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)
                    ),
                    IconButton(onPressed: (){},
                        icon: const Icon(Icons.keyboard_arrow_right,color: Colors.white,size: 25,weight: 1,)
                    )
                  ],
                ),
              ),
            ),
            //Auto swipable page view
            Padding(
              padding:  const EdgeInsets.only(top: 5),
              child: SizedBox(
                 width: size.width*1,
                height: size.height*0.28,
                child: Stack(
                  children: [
                    SizedBox(
                      height: size.height*0.25,
                      child: PageView(
                        controller: _pcontroller,
                        scrollDirection: Axis.horizontal,
                        reverse: false,
                        physics: const BouncingScrollPhysics(),
                        pageSnapping: true,
                        onPageChanged: (index){
                          setState(() {
                            currentPage=index;
                          });
                        },
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height*0.25,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage("assets/images/list_0.jpg"),
                                  fit:BoxFit.fill,
                                  //alignment: Alignment.topCenter)
                                )
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*1,
                            height: MediaQuery.of(context).size.height*0.25,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage("assets/images/list_1.png"),
                                  fit:BoxFit.fill,
                                  //alignment: Alignment.topCenter)
                                )
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*1,
                            height: MediaQuery.of(context).size.height*0.25,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage("assets/images/list_2.png"),
                                  fit:BoxFit.fill,
                                  //alignment: Alignment.topCenter)
                                )
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*1,
                            height: MediaQuery.of(context).size.height*0.25,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage("assets/images/list_3.png"),
                                  fit:BoxFit.fill,
                                  //alignment: Alignment.topCenter)
                                )
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*1,
                            height: MediaQuery.of(context).size.height*0.25,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage("assets/images/list_4.png"),
                                  fit:BoxFit.fill,
                                  //alignment: Alignment.topCenter)
                                )
                            ),
                          ),
                        ],

                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: row(),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: size.height*0.012,
            ),
            //Ads card
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: size.height*0.063,
                  width: size.width*0.30,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/card.jpg"),
                          fit: BoxFit.fill

                      )
                  ),
                ),
                Container(
                  height: size.height*0.063,
                  width: size.width*0.30,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/card.jpg"),
                          fit: BoxFit.fill

                      )
                  ),
                ),
                Container(
                  height: size.height*0.063,
                  width: size.width*0.30,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/card.jpg"),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ],
            ),

            SizedBox(
              height: size.height*0.012,
            ),
            //All Time Favourite Grid View
            Padding(
              padding:  EdgeInsets.all(size.height*0.012),
              child: AutoSizeText(
                "ALL-TIME FAVOURITES",
                style: GoogleFonts.openSans(
                    color: Colors.black87,
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: size.height*0.01,
            ),
            SizedBox(
              height: size.height*0.75,
              width: size.width*0.96,
              child: GridView.builder(
               gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
               mainAxisSpacing: size.height*0.022,
               mainAxisExtent: size.height*0.26,
                 crossAxisSpacing: size.width*0.032,
                   ),
                shrinkWrap: true,
                itemCount: 8,
               scrollDirection: Axis.vertical,
               itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Material(
                        elevation: 3,
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        child:Column(
                          children: [
                            Container(
                              height: size.height * 0.2,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,width: 1),
                                  borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/img_$index.png"),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(
                              height: size.height * 0.05,
                              width: size.width*0.4,
                              child: Center(
                                child: AutoSizeText(
                                  "Under \u{20B9} ${price[index]}",
                                  style: GoogleFonts.openSans(
                                      color: Colors.black87,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),

                          ],
                        ) ,
                      ),
                    );
               }
              ),
            ),
            SizedBox(
              height: size.height*0.01,
            ),
            //all view button
            Container(
              height: size.height*0.035,
              width: size.width*0.94,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                      "View All",
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)
                  ),
                  IconButton(onPressed: (){},
                      icon: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 18,)
                  )
                ],
              ),
            ),
            //Highlights of the day list view
            SizedBox(
              height: size.height*0.060,
              width: size.width*9,
              child: Padding(
                padding: const EdgeInsets.only(top: 20,left: 10),
                child: AutoSizeText(
                    "HIGHLIGHTS OF THE DAY",
                    style: GoogleFonts.openSans(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)
                ),
              ),
            ),
            SizedBox(
              height: size.height*0.18,
              child: ListView.builder(
                  padding:  const EdgeInsets.only(left: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) =>
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: size.height * 0.9,
                            width: size.width * 0.4,
                            decoration:  BoxDecoration(
                              border: Border.all(color: Colors.grey,width: 1),
                                borderRadius: const BorderRadius.all(Radius.circular(5)),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/fashion_$index.png"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            width: size.width*0.022,
                          )
                        ],
                      ),

              ),
            ),
            //Featured Brands
            SizedBox(
              height: size.height*0.060,
              width: size.width*9,
              child: Padding(
                padding: const EdgeInsets.only(top: 20,left: 10),
                child: AutoSizeText(
                    "FEATURED BRANDS",
                    style: GoogleFonts.openSans(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)
                ),
              ),
            ),
            SizedBox(
              height: size.height*0.2,
              child: ListView.builder(
                padding:  const EdgeInsets.only(left: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) =>
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: size.width * 0.4,
                          decoration:  BoxDecoration(
                              border: Border.all(color: Colors.grey,width: 1),
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/brands_$index.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                        SizedBox(
                          width: size.width*0.022,
                        )
                      ],
                    ),

              ),
            ),
            SizedBox(
              height: size.height*0.01,
            ),
          ],
        ),
      ),
    );
  }
  Widget row()
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        currentPage==0?const Icon(Icons.circle,size: 13,color: Colors.blue,):const Icon(Icons.circle_outlined,size: 13,color: Colors.grey,),
        currentPage==1?const Icon(Icons.circle,size: 13,color: Colors.blue,):const Icon(Icons.circle_outlined,size: 13,color: Colors.grey,),
        currentPage==2?const Icon(Icons.circle,size: 13,color: Colors.blue,):const Icon(Icons.circle_outlined,size: 13,color: Colors.grey,),
        currentPage==3?const Icon(Icons.circle,size: 13,color: Colors.blue,):const Icon(Icons.circle_outlined,size: 13,color: Colors.grey,),
        currentPage==4?const Icon(Icons.circle,size: 13,color: Colors.blue,):const Icon(Icons.circle_outlined,size: 13,color: Colors.grey,),
      ],
    );
  }
}
