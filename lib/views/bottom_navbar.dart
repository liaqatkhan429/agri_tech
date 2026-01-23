import 'package:agri_tech/utils/utils.dart';
import 'package:agri_tech/views/all_question.dart';
import 'package:agri_tech/views/comment.dart';
import 'package:agri_tech/views/home.dart';
import 'package:agri_tech/views/profile.dart';
import 'package:agri_tech/views/training_videos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavbarView extends StatefulWidget {
  const BottomNavbarView({super.key});

  @override
  State<BottomNavbarView> createState() => _BottomNavbarViewState();
}

class _BottomNavbarViewState extends State<BottomNavbarView> {
  int selectedIndex = 0;


  final List<Widget> screenList = [
    HomeView(),
    QuestionsView(),
    TrainingVideosView(),
    CommentView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return _showExitDialog(context);
      },
      child: Scaffold(
        body: screenList[selectedIndex],
        bottomNavigationBar: CustomBottomNav(
            selectedIndex: selectedIndex,
            onTap: (index){
              setState(() {
                selectedIndex = index;
              });
            })
      
      ),
    );
  }
}



class CustomBottomNav extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const CustomBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navItem("assets/home.png", 0),
          _navItem("assets/questionmark.png", 1),
          _navItem("assets/video.png", 2),
          _navItem("assets/comment.png", 3),
          _navItem("assets/profile.png", 4),
        ],
      ),
    );
  }

  Widget _navItem(String image, int index) {
    bool isActive = selectedIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Indicator
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            height: 6,
            width: isActive ? 30 : 0,
            decoration: BoxDecoration(
              color: const Color(0xff339D44),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
            ),
          ),
          const SizedBox(height: 17),

          // Icon
          Image.asset(
            image,
            height: 24,
            width: 24,
            color: isActive
                ? const Color(0xff339D44)
                : const Color(0xffB4B4B4),
          ),
        ],
      ),
    );
  }
}

Future<bool> _showExitDialog(BuildContext context) async {
  return await showDialog<bool>(
    context: context,
    barrierDismissible: false,
    barrierColor: const Color(0xff339D47),
    builder: (context) => AlertDialog(
      alignment: Alignment.center,

      title: Text(
        "Exit App?",
        textAlign: TextAlign.center,
        style: GoogleFonts.raleway(
          fontWeight: FontWeight.w700,
          fontSize: 23,
          color: const Color(0xff292929),
        ),
      ),

      content: Text(
        "Press back again\nif you want to exit the app",
        textAlign: TextAlign.center,
        style: GoogleFonts.raleway(
          fontWeight: FontWeight.w400,
          fontSize: 13,
          color: const Color(0xffB4B4B4),
        ),
      ),

      titlePadding: const EdgeInsets.only(top: 24, left: 24, right: 24),
      contentPadding:
      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),

      actionsPadding:
      const EdgeInsets.only(left: 16, right: 16, bottom: 20),

      actionsAlignment: MainAxisAlignment.center,

      actions: [
        Row(
          children: [
            AppButton(
              txt: "Yes",
              width: 124,
              height: 60,
              onPress: () => SystemNavigator.pop(),
            ),
            SizedBox(width: 9,),
            SizedBox(
              height: 60,
              width: 112,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context, false),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  backgroundColor: const Color(0xffF4F4F4),
                  elevation: 0,
                ),
                child: Text(
                  "NO",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: const Color(0xffB4B4B4),
                  ),
                ),
              ),
            ),
          ],
        ),

      ],
    ),
  ) ??
      false;
}
