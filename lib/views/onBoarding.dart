import 'package:agri_tech/model/onBoarding.dart';
import 'package:agri_tech/views/create_account.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
PageController controller = PageController();
  List<OnBoardingModel> onboardingList = [
    OnBoardingModel(imageTop: "assets/frame1.png", imageDown: "assets/bg.png", title: "Get Rid of Third Person", description: "Using this application you can get rid of paying commission fee to third person. Now you can directly chat with sellers and deal with them."),
    OnBoardingModel(imageTop: "assets/frame2.png", imageDown: "assets/bg.png", title: "Help in Market Analysis", description: "You’ll have all of the market ananlysis in your pocket. You’ll get to know the latest and Genuine Market Rates of items."),
    OnBoardingModel(imageTop: "assets/frame3.png", imageDown: "assets/bg.png", title: "Multilingual", description: "Easily register your store on the platform and start selling your items, or if you are a buyer search for your desired items and purchase them directly."),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /// page view
          Expanded(
            child: PageView.builder(
                controller: controller,
                itemCount: onboardingList.length,
                itemBuilder: (context, i){
                  return Column(
                    children: [
                      const SizedBox(height: 74),

                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(top: 50, left: 40),
                              child: Image.asset(
                                onboardingList[i].imageDown,
                                width: 408,
                                height: 370,
                              ),
                            ),


                            Image.asset(
                              onboardingList[i].imageTop,
                              width: 408,
                              height: 292,
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 29),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(onboardingList[i].title.toString(),style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w700,
                                fontSize: 33.18,
                                color: Color(0xff292929),
                              ),),
                            ),
                            SizedBox(height: 12,),
                            Text(onboardingList[i].description.toString(),style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w400,
                              fontSize: 19.2,
                              color: Color(0xffB4B4B4),
                            ),),
                          ],
                        ),
                      )
                    ],
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 34),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 40,),
                SmoothPageIndicator(
                    controller: controller,
                    count: onboardingList.length,
                    effect: ScrollingDotsEffect(
                      activeStrokeWidth: 2.6,
                      activeDotColor: Color(0xff339D44),
                      radius: 8,
                      spacing: 10,
                      dotHeight: 6,
                      dotWidth: 6,
                    )),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccountView()));

                }, child: Text("SKIP",style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Color(0xff339D44),
                ),),)
              ],
            ),
          ),
        ],
      )
    );
  }
}
