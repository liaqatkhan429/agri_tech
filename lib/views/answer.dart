import 'package:agri_tech/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostAnswerView extends StatelessWidget {
   PostAnswerView({super.key});

  TextEditingController answerController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 5,),
                Row(
                  children: [
                    InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Image.asset("assets/arrow_back_icon.png",height: 24,width: 24,)),
                    SizedBox(width: 20,),
                    Text(
                      "Answer",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w700,
                        fontSize: 23,
                        color: const Color(0xff292929),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 48,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
            
            
                      ],
                    ),
                    SizedBox(height: 15.5,),
                    Text(
                      "What is the process of purchasing Vehicle from hardware store?",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.33,
                        color: const Color(0xff292929),
                      ),
                    ),
                    //SizedBox(height: 15,),
                    //Image.asset("assets/tractor.png"),
                    SizedBox(height: 24,),
                   Utils().buildTextField("Enter your answer",4, controller: answerController),
                    SizedBox(height: 388,),
                    AppButton(txt: "Send", width: double.infinity, height: 60, onPress: (){})
            
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
