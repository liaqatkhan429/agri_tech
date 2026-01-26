import 'package:agri_tech/utils/utils.dart';
import 'package:agri_tech/views/answer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsView extends StatefulWidget {
  const QuestionsView({super.key});

  @override
  State<QuestionsView> createState() => _QuestionsViewState();
}

class _QuestionsViewState extends State<QuestionsView> {
  TextEditingController searchController = TextEditingController();
  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Questions",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w700,
                        fontSize: 23.04,
                        color: const Color(0xff292929),
                      ),
                    ),
                    isSearch
                        /// close icon
                        ? InkWell(
                            splashColor: Colors.transparent,
                            onTap: () {
                              isSearch = false;
                              setState(() {});
                            },
                            child: Image.asset(
                              "assets/close_icon.png",
                              height: 24,
                              width: 24,
                            ),
                          )
                        /// search icon
                        : InkWell(
                            splashColor: Colors.transparent,
                            onTap: () {
                              isSearch = true;
                              setState(() {});
                            },
                            child: Image.asset(
                              "assets/search_icon.png",
                              height: 24,
                              width: 24,
                            ),
                          ),
                  ],
                ),
              ),
              SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: isSearch == true
                    ? Utils().buildTextField(
                        "Search",
                        1,
                        controller: searchController,
                      )
                    : TabBar(
                        indicator: const FixedSizeTabIndicator(
                          color: Color(0xff339D44),
                          height: 40,
                          width: 95,
                          radius: 10,
                        ),
                        splashFactory: NoSplash.splashFactory,
                        overlayColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                        dividerColor: Colors.transparent,
                        labelColor: Colors.white,
                        unselectedLabelColor: Color(0xffB4B4B4),
                        labelStyle: GoogleFonts.raleway(
                          fontWeight: FontWeight.w400,
                          fontSize: 11.11,
                        ),
                        tabs: [
                          Tab(text: "All"),
                          Tab(text: "Pending"),
                          Tab(text: "Answer"),
                        ],
                      ),
              ),

              Expanded(
                child: TabBarView(
                  children: [AllView(), PendingView(), AnswerView()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





class AllView extends StatelessWidget {
  const AllView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 48),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
      
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/image.png"),
                          fit: BoxFit.contain,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fareeha Sadaqat",
                            style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w500,
                              fontSize: 11.11,
                              color: const Color(0xff292929),
                            ),
                          ),
                          Text(
                            "10 mins ago",
                            style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w400,
                              fontSize: 9.26,
                              color: const Color(0xffB4B4B4),
                            ),
                          ),
                        ]),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PostAnswerView()));
                      },
                      child: Text(
                        "Answer",
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w400,
                          fontSize: 11.11,
                          color: const Color(0xff339D44),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "I have an issue regarding this vehicle",
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.33,
                    color: const Color(0xff292929),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Image.asset("assets/tractor.png"),
              SizedBox(height: 24,),
              Divider(color: Color(0xffd4d4d4),),
              SizedBox(height: 24,),
      
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
      
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/image.png"),
                          fit: BoxFit.contain,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 8),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fareeha Sadaqat",
                            style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w500,
                              fontSize: 11.11,
                              color: const Color(0xff292929),
                            ),
                          ),
                          Text(
                            "10 mins ago",
                            style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w400,
                              fontSize: 9.26,
                              color: const Color(0xffB4B4B4),
                            ),
                          ),
                        ]),
                    Spacer(),
                    Text(
                      "Answer",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w400,
                        fontSize: 11.11,
                        color: const Color(0xff339D44),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "What is the process of purchasing Vehicle from hardware store?",
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.33,
                    color: const Color(0xff292929),
                  ),
                ),
              ),
              //SizedBox(height: 15,),
              //Image.asset("assets/tractor.png"),
              SizedBox(height: 24,),
              Divider(color: Color(0xffd4d4d4),),
              SizedBox(height: 24,),
      
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
      
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/image.png"),
                          fit: BoxFit.contain,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 8),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fareeha Sadaqat",
                            style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w500,
                              fontSize: 11.11,
                              color: const Color(0xff292929),
                            ),
                          ),
                          Text(
                            "10 mins ago",
                            style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w400,
                              fontSize: 9.26,
                              color: const Color(0xffB4B4B4),
                            ),
                          ),
                        ]),
                    Spacer(),
                    Text(
                      "Answer",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w400,
                        fontSize: 11.11,
                        color: const Color(0xff339D44),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "What is the process of purchasing Vehicle from hardware store?",
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.33,
                    color: const Color(0xff292929),
                  ),
                ),
              ),
              //SizedBox(height: 15,),
              //Image.asset("assets/tractor.png"),
              SizedBox(height: 24,),
              Divider(color: Color(0xffd4d4d4),),
              SizedBox(height: 24,),
      
            ],
          ),
      
        ],
      ),
    );
  }
}

class PendingView extends StatelessWidget {
  const PendingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("pending"),
    );
  }
}

/// Answer
class AnswerView extends StatelessWidget {
  const AnswerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 78,
          right: 60,
          child: Column(
            children: [
              Image.asset("assets/nodata.png",width: 190, height: 206,),
              SizedBox(height: 35,),
              Text(
                "No Data Found",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                  color: const Color(0xff292929),
                ),

              ),
              SizedBox(height: 8,),
              Text(
                "You have not answered any\nquestions yet",
                textAlign: TextAlign.center,
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: const Color(0xffB4B4B4),
                ),

              ),
            ],
          ),
        ),

        Positioned(
            bottom: 0,
            child: Image.asset("assets/nodata_found.png", )),
      ],
    );
  }
}
