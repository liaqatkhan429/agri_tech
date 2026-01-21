import 'package:agri_tech/views/all_question.dart';
import 'package:agri_tech/views/answer.dart';
import 'package:agri_tech/views/home.dart';
import 'package:flutter/material.dart';

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
    PostAnswerView(),
    PostAnswerView(),
    PostAnswerView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectedIndex],
      bottomNavigationBar: CustomBottomNav(
          selectedIndex: selectedIndex,
          onTap: (index){
            setState(() {
              selectedIndex = index;
            });
          })

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
