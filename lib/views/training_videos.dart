import 'package:agri_tech/views/add_video.dart';
import 'package:agri_tech/views/home.dart';
import 'package:agri_tech/views/user_comment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/utils.dart';

class TrainingVideosView extends StatefulWidget {
  const TrainingVideosView({super.key});

  @override
  State<TrainingVideosView> createState() => _TrainingVideosViewState();
}

class _TrainingVideosViewState extends State<TrainingVideosView> {
  TextEditingController searchController = TextEditingController();

  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController (
      length: 2,
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
                      "Training Videos",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w700,
                        fontSize: 23.04,
                        color: const Color(0xff292929),
                      ),
                    ),

                    isSearch

                        ? InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          isSearch = false;
                          searchController.clear();
                        });
                      },
                      child: Image.asset(
                        "assets/close_icon.png",
                        height: 24,
                        width: 24,
                      ),
                    )

                        : Row(
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          onTap: () {
                            setState(() {
                              isSearch = true;
                            });
                          },
                          child: Image.asset(
                            "assets/search_icon.png",
                            height: 24,
                            width: 24,
                          ),
                        ),
                        const SizedBox(width: 13),
                        InkWell(
                          splashColor: Colors.transparent,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  AddVideoView(),
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.add,
                            size: 24,
                            color: Color(0xff339D44),
                          ),
                        ),
                      ],
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
                  indicator:  FixedSizeTabIndicator(
                    color: Color(0xff339D44),
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.42,
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
                    Tab(text: "Recently Updated"),
                  ],
                ),
              ),

              Expanded(
                child: TabBarView(
                  children: [
                    TabAllButton(),
                    RecentlyUpdateButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class TabAllButton extends StatelessWidget {
  const TabAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "How to start A tractor",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: const Color(0xff292929),
                          ),
                        ),
                        Text(
                          "Upload Date: 15 mins ago",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w400,
                            fontSize: 9.26,
                            color: const Color(0xffB4B4B4),
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
              ),
              SizedBox(height: 14,),
              Image.asset("assets/tractorvideo.png"),
              SizedBox(height: 13,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.remove_red_eye_outlined,color :  Color(0xffB4B4B4),),
                        SizedBox(width: 6,),
                        Text(
                          "139 Views",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w400,
                            fontSize: 9.26,
                            color:  Color(0xffB4B4B4),
                          ),
                        ),
      
                      ],
                    ),
                    SizedBox(width: 36,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => UserCommentView()));
                      },
                      child: Row(
                        children: [
                          Image.asset("assets/comment.png",color :  Color(0xffB4B4B4),height: 18,width: 18,),
                          SizedBox(width: 6,),
                          Text(
                            "139 Views",
                            style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w400,
                              fontSize: 9.26,
                              color:  Color(0xffB4B4B4),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 31,),
              Divider(color: Color(0xffd4d4d4),),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 23),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "How to buy a Crane",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: const Color(0xff292929),
                          ),
                        ),
                        Text(
                          "Upload Date: 15 mins ago",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w400,
                            fontSize: 9.26,
                            color: const Color(0xffB4B4B4),
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
              ),
              SizedBox(height: 14,),
              Image.asset("assets/tractorvideo.png"),
              SizedBox(height: 13,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.remove_red_eye_outlined,color :  Color(0xffB4B4B4),),
                        SizedBox(width: 6,),
                        Text(
                          "139 Views",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w400,
                            fontSize: 9.26,
                            color:  Color(0xffB4B4B4),
                          ),
                        ),
      
                      ],
                    ),
                    SizedBox(width: 36,),
                    Row(
                      children: [
                        Image.asset("assets/comment.png",color :  Color(0xffB4B4B4),height: 18,width: 18,),
                        SizedBox(width: 6,),
                        Text(
                          "139 Views",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w400,
                            fontSize: 9.26,
                            color:  Color(0xffB4B4B4),
                          ),
                        ),
      
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 31,),
              Divider(color: Color(0xffd4d4d4),),
            ],
          ),
        ],
      ),
    );
  }
}


class RecentlyUpdateButton extends StatelessWidget {
  const RecentlyUpdateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}

