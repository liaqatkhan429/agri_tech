import 'package:agri_tech/utils/utils.dart';
import 'package:agri_tech/views/login.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalDetailView extends StatefulWidget {
  const PersonalDetailView({super.key});

  @override
  State<PersonalDetailView> createState() => _PersonalDetailViewState();
}

class _PersonalDetailViewState extends State<PersonalDetailView> {
  String? selectedType;
  TextEditingController qualificationController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 1,),
            Text(
              "Personal Details",
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.w700,
                fontSize: 23,
                color: const Color(0xff292929),
              ),
            ),
            SizedBox(height: 7,),
            Text(
              "Enter your personal details",
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: const Color(0xffb4b4b4),
              ),
            ),

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
                          "Upload Profile Image",
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


          AppDropdown(

          label: "Choose Expertise",
          items: ["G1", "G2"],
          value: selectedType,
          onChanged: (val) {
            setState(() {
              selectedType = val;
            });
          },
        ),
            SizedBox(height: 20,),
            Utils().buildTextField("Qualification", 1, controller: qualificationController),

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
                          "Upload Latest Degree Image",
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
            Utils().buildTextField("Address", 4, controller: addressController),

            SizedBox(height: 20,),
            Utils().buildTextField("Contact", 1, controller: contactController),

            SizedBox(height: 47,),

            AppButton(txt: "Next", width: double.infinity, height: 60, onPress: (){

              showDialog(
                  barrierColor: Colors.black54,
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      backgroundColor: Colors.white,
                      title: Icon(Icons.done_all, size: 48,color: Color(0xff339D44),),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                        Text(
                        "Account Created",
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w700,
                          fontSize: 23,
                          color: const Color(0xff292929),
                        ),
                        ),
                        Text(
                        "You can now access your account",
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: const Color(0xffB4B4B4),
                        ),
                        ),

                        ],
                      ),
                      actions: [
                        AppButton(txt: "Login", width: double.infinity, height: 60, onPress: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView()));
                        })
                      ],
                    );
                  });
            }),
            SizedBox(height: 19,),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child:   Text(
            "Back",
            style: GoogleFonts.raleway(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: const Color(0xff339D44),
            ),
          ),)


        ],),
        ),
      ),
    );
  }
}


class AppDropdown extends StatefulWidget {
  final String label;
  final List<String> items;
  final String? value;
  final ValueChanged<String?> onChanged;

  const AppDropdown({
    super.key,
    required this.label,
    required this.items,
    required this.value,
    required this.onChanged,

  });

  @override
  State<AppDropdown> createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: DropdownButtonFormField<String>(
        focusNode: _focusNode,
        value: widget.value,
        items: widget.items
            .map(
              (e) => DropdownMenuItem(
            value: e,
            child: Text(e),
          ),
        )
            .toList(),
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: TextStyle(
            color: _focusNode.hasFocus
                ? const Color(0xff339D44)
                : const Color(0xffB4B4B4),
          ),
          floatingLabelStyle: const TextStyle(
            color: Color(0xff339D44),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xff339D44)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xffD4D4D4)),
          ),
        ),
      ),
    );
  }
}

