import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:upgradex_mintra/home_page.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key});
  final List<String> text=[
    "Get Myntra Voucher Worth Rs.500",
    "Get Levi's Voucher Worth Rs.500",
    "Get SonyLiv Premium 1 Month Subscription",
    "Get Tokyo Talkies Voucher worth Rs.400",
    "Get FLAT 12% OFF on Flipkart Flight Bookings"
  ];
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(26, 28, 35, 1),
      drawer: const Drawer(
        elevation: 0,
        backgroundColor: Colors.white,
        child: Icon(Icons.menu,color: Colors.black),
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
            IconButton(
                onPressed: (){
              Navigator.push(context,
              PageTransition(
                reverseDuration: const Duration(milliseconds: 300),
                duration: const Duration(milliseconds: 400),
                  child: const HomePage(),
                  type: PageTransitionType.rightToLeftJoined,
                childCurrent: Screen1()
              ),
              );
            },
                icon: const Icon(Icons.arrow_forward_ios))
          ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Image
            SizedBox(
              height: size.height*0.45,
              width: size.width,
              child: const Image(
                image: AssetImage("assets/images/image_1.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: size.height*0.015,
            ),
            //text
            Padding(
              padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
              child: AutoSizeText("Become An INSIDER!",style: GoogleFonts.openSans(
                fontSize: 28,
                color: const Color.fromRGBO(237, 171, 55, 1),
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: size.height*0.015,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
              child: AutoSizeText("Join the insider programme and earn Supercoins with every purchase and much more. Log in now!",style: GoogleFonts.openSans(
                  fontSize: 18,
                  color: Colors.grey.withOpacity(0.9),
                  fontWeight: FontWeight.w700
              ),),
            ),
            SizedBox(
              height: size.height*0.03,
            ),
            //New Goal Criteria
            Padding(
              padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
              child: AutoSizeText("New Goal Criteria",style: GoogleFonts.openSans(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700
              ),),
            ),
            SizedBox(
              height: size.height*0.025,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
              child: Container(
                height: size.height*0.24,
                width: size.width,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(40, 44, 63, 1),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height*0.11,
                      child: Padding(
                        padding: EdgeInsets.all(size.height*0.015),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: size.height*0.06,
                                width: size.width*0.1,
                                child: const Image(
                                  image: AssetImage("assets/images/image_2.png"),
                                  fit: BoxFit.fill,
                                ),
                            ),
                            SizedBox(
                              width: size.width*0.05,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText("\u20B90",style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600
                                ),),
                                AutoSizeText("You've Spent",style: GoogleFonts.openSans(
                                    color: Colors.grey.withOpacity(0.9),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700
                                ),),
                              ],
                            ),
                            SizedBox(
                              width: size.width*0.27,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText("\u20B9 7000",style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600
                                ),),
                                AutoSizeText("Goal",style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey.withOpacity(0.8),
                    ),
                    SizedBox(
                      height: size.height*0.11,
                      child: Padding(
                        padding: EdgeInsets.all(size.height*0.015),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: size.height*0.06,
                              width: size.width*0.1,
                              child: const Image(
                                image: AssetImage("assets/images/image_2.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              width: size.width*0.05,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText("0/5",style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600
                                ),),
                                AutoSizeText("Your Orders",style: GoogleFonts.openSans(
                                    color: Colors.grey.withOpacity(0.9),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700
                                ),),
                              ],
                            ),
                            SizedBox(
                              width: size.width*0.36,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText("5",style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600
                                ),),
                                AutoSizeText("Goal",style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ),
            SizedBox(
              height: size.height*0.015,
            ),

            Padding(
              padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
              child: AutoSizeText("Note: Recent purchases will only reflect in the goal once the return window is over",style: GoogleFonts.openSans(
                  color: Colors.grey.withOpacity(0.8),
                  fontSize: 15,
                  fontWeight: FontWeight.w400
              ),),
            ),
            SizedBox(
              height: size.height*0.03,
            ),
            //Benefits of joining
            Padding(
              padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
              child: AutoSizeText("Benefits of Joining The Program",style: GoogleFonts.openSans(
                  fontSize: 22,
                  color: const Color.fromRGBO(237, 171, 55, 1),
                  fontWeight: FontWeight.w800
              ),),
            ),
            SizedBox(
              height: size.height*0.03,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height*0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: const AssetImage("assets/images/image_3.png"),
                          radius: size.width*0.07,
                        ),
                        SizedBox(
                          width: size.width*0.03,
                        ),
                        AutoSizeText("Early Access to The Sales",style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600
                        ),),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.8),
                    thickness: 1,
                  ),
                  SizedBox(
                    height: size.height*0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: const AssetImage("assets/images/image_4.png"),
                          radius: size.width*0.07,
                        ),
                        SizedBox(
                          width: size.width*0.03,
                        ),
                        SizedBox(
                          //height: size.height*0.25,
                          width: size.width*0.75,
                          child: AutoSizeText("Insider Exclusive Rewards & Benefits",style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600
                          ),softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.8),
                    thickness: 1,
                  ),
                  SizedBox(
                    height: size.height*0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: const AssetImage("assets/images/image_5.png"),
                          radius: size.width*0.07,
                        ),
                        SizedBox(
                          width: size.width*0.03,
                        ),
                        AutoSizeText("Priority Customer Support",style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height*0.03,
            ),
            //How does it work
            Padding(
              padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
              child: AutoSizeText("How does it work",style: GoogleFonts.openSans(
                  fontSize: 22,
                  color: const Color.fromRGBO(237, 171, 55, 1),
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: size.height*0.02,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
              child: AutoSizeText("Earn SuperCoins with every purchase.\nYou can get upto 3 SuperCoins for every \u20B9100 spent",style: GoogleFonts.openSans(
                  fontSize: 15,
                  color: Colors.grey.withOpacity(0.9),
                  fontWeight: FontWeight.w700
              ),),
            ),
            SizedBox(
              height: size.height*0.02,
            ),
            Padding(
                padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
                child: Container(
                  height: size.height*0.271,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(40, 44, 63, 1),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
                        child: SizedBox(
                          height: size.height*0.2,
                          child: const Image(image: AssetImage("assets/images/image_6.png")),
                        ),
                      ),
                      Container(
                        height: size.height*0.07,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(62, 65, 82, 1),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: size.width*0.05,right: size.width*0.03),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: size.width*0.04,
                                backgroundColor: const Color.fromRGBO(26, 28, 35, 1),
                                child: const Icon(Icons.arrow_upward_outlined,color: Color.fromRGBO(237, 171, 55, 1),),
                              ),
                              SizedBox(
                                width: size.width*0.02,
                              ),
                              AutoSizeText("Shop on Myntra to Upgrade your tier",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400
                              ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ),
            // Rewards
            SizedBox(
              height: size.height*0.03,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
              child: AutoSizeText("Rewards",style: GoogleFonts.openSans(
                  fontSize: 22,
                  color: const Color.fromRGBO(237, 171, 55, 1),
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: size.height*0.005,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
              child: AutoSizeText("Use your SuperCoins to get exciting rewards",style: GoogleFonts.openSans(
                  fontSize: 15,
                  color: Colors.grey.withOpacity(0.9),
                  fontWeight: FontWeight.w700
              ),),
            ),
            SizedBox(
              height: size.height*0.03,
            ),
            Container(
              padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
              height: size.height*0.35,
              width: size.width*0.994,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,

                itemBuilder: (context, index) => SizedBox(
                  height: size.height*0.4,
                  child: Padding(
                    padding: EdgeInsets.only(right: size.width*0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: size.height*0.25,
                          width: size.width*0.8,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                 topRight: Radius.circular(12),
                                topLeft: Radius.circular(12)
                              ),
                              image: DecorationImage(image: AssetImage("assets/images/image_l$index.jpg"),fit: BoxFit.fill)
                          ),
                        ),
                        Container(
                          height: size.height*0.1,
                          width: size.width*0.8,
                          padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                              borderRadius: BorderRadius.only(
                                 bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12)
                              ),
                          ),
                          child: Center(
                            child: AutoSizeText(
                              text[index],
                              style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 17
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),),
            ),
            SizedBox(
              height: size.height*0.04,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03),
              child: SizedBox(
                width: size.width*0.994,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width*0.1,
                      child: const Image(
                        image: AssetImage("assets/images/logo1.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: size.width*0.3,
                      child: const Image(
                        image: AssetImage("assets/images/logo2.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height*0.01,
            ),
            Center(
              child: AutoSizeText("Fashion Advice | VIP Access | Extra Savings",style: GoogleFonts.openSans(
                  fontSize: 12,
                  color: Colors.grey.withOpacity(0.9),
                  fontWeight: FontWeight.w800
              ),),
            ),
            SizedBox(
              height: size.height*0.23,
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: size.width,
        color: const Color.fromRGBO(40, 44, 63, 1),
        height: size.height*0.16,
        child:  Padding(
          padding: EdgeInsets.only(left: size.width*0.03,right: size.width*0.03,top: size.width*0.02),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(255, 63, 108, 1),
                  fixedSize: Size(size.width*0.99, size.height*0.05),
                   elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
                onPressed: (){},
                child: AutoSizeText("LOG IN",style: GoogleFonts.openSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),),

              ),
              SizedBox(
                height: size.height*0.01,
              ),
              AutoSizeText("By enrolling you agree to",
                style: GoogleFonts.openSans(
                  color: Colors.grey.withOpacity(0.8),
                  fontWeight: FontWeight.w400,
                  fontSize: 15
                ),
              ),
              SizedBox(
                height: size.height*0.01,
              ),
              AutoSizeText("Insider Terms&Conditions",
                style: GoogleFonts.openSans(
                    color: const Color.fromRGBO(255, 63, 108, 1),
                    fontWeight: FontWeight.w700,
                    fontSize: 18
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
