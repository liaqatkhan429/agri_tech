import 'package:agri_tech/model/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  List<HomeModel> list = [
    HomeModel(image: "assets/questionmark.png", number: "224", text: "Total Questions"),
    HomeModel(image: "assets/done.png", number: "154", text: "Answer\nQuestions"),
    HomeModel(image: "assets/views.png", number: "1.5k", text: "Total Views"),
    HomeModel(image: "assets/videos.png", number: "12", text: "Total Videos"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
            Text(
            "Dashboard!",
            style: GoogleFonts.raleway(
              fontWeight: FontWeight.w700,
              fontSize: 23,
              color: const Color(0xff292929),
            ),
            ),
              Text(
            "Welcome to Dashboard, Ali",
            style: GoogleFonts.raleway(
              fontWeight: FontWeight.w400,
              fontSize: 11,
              color: const Color(0xff292929),
            ),
            ),

              SizedBox(height: 32,),

              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      mainAxisSpacing: 9,
                      crossAxisSpacing: 9,
                    ),
                    itemCount: list.length,
                    itemBuilder: (context, i){

                      return Container(
                        width: 153,
                        height: 104,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image.asset(list[i].image.toString(),width: 48,height: 48,),
                              ),
                              SizedBox(width: 3,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    list[i].number.toString(),
                                    style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 23.4,
                                      color: const Color(0xff292929),
                                    ),
                                  ),
                                  Text(
                                    list[i].text.toString(),
                                    style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 9.26,
                                      color: const Color(0xff292929),
                                    ),
                                  ),
                                ],
                              )],
                          ),
                        ),
                      );

                    }),
              )


            ],
          ),
        ),
      ),
    );
  }
}
