import 'package:agri_tech/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddVideoView extends StatefulWidget {
  const AddVideoView({super.key});

  @override
  State<AddVideoView> createState() => _AddVideoViewState();
}

class _AddVideoViewState extends State<AddVideoView> {
  TextEditingController titleControler = TextEditingController();
  TextEditingController descriptionControler = TextEditingController();
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
                "Add Video",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                  color: const Color(0xff292929),
                ),
              ),
            ],
          ),
          SizedBox(height: 24,),
          Image.asset("assets/addedvideo.png", width: double.infinity, height: 179,),
          SizedBox(height: 30,),
          DashedButton(
              child: SizedBox(
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Upload Video",
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: const Color(0xff292929),
                        ),
                      ),
                      Image.asset("assets/uploadicon.png",width: 18,height: 20,)
                    ],
                  ),
                ),
              )),
          SizedBox(height: 20,),
          DashedButton(
              child: SizedBox(
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Upload Thumbnail",
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: const Color(0xff292929),
                        ),
                      ),
                      Image.asset("assets/uploadicon.png",width: 18,height: 20,)
                    ],
                  ),
                ),
              )),
          SizedBox(height: 20,),
          Utils().buildTextField("Title", 1, controller: titleControler),
          SizedBox(height: 20,),
          Utils().buildTextField("Description", 4, controller: descriptionControler),
          SizedBox(height: 59,),
          AppButton(txt: "Post", width: double.infinity, height: 60, onPress: (){
            showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: Icon(Icons.done_all, size: 48,color: Color(0xff339D44),),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Uploaded",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w700,
                            fontSize: 23,
                            color: const Color(0xff292929),
                          ),
                        ),
                        Text(
                          "Video uploaded",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: const Color(0xffB4B4B4),
                          ),
                        ),

                      ],
                    ),
                    actions: [
                      AppButton(txt: "View Videos", width: double.infinity, height: 60, onPress: (){})
                    ],
                  );
                });
          })
        ],
      ),
    ),
  ),
),
    );
  }
}
