  import 'package:agri_tech/utils/utils.dart';
import 'package:agri_tech/views/login.dart';
import 'package:agri_tech/views/personal_detail.dart';
import 'package:flutter/material.dart';
  import 'package:google_fonts/google_fonts.dart';

  class CreateAccountView extends StatefulWidget {
    const CreateAccountView({super.key});

    @override
    State<CreateAccountView> createState() => _CreateAccountViewState();
  }

  class _CreateAccountViewState extends State<CreateAccountView> {

    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 350,
                child: Stack(
                  children: [
                    // Background Image
                    Image.asset(
                      "assets/create_account_bg.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
          
                    // White Card
                    Positioned(
                      top: 140,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 45, right: 30, left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Create Account",
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 23,
                                  color: const Color(0xff292929),
                                ),
                              ),
                              const SizedBox(height: 7),
                              Text(
                                "Login to Access Your Account",
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: const Color(0xffB4B4B4),
                                ),
                              ),
          
                              SizedBox(height: 30,),
          
                           /// name
                              buildTextField(
                                  "Name",
                              controller: nameController),
                              SizedBox(height: 20,),
          
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // email
                    buildTextField("Email", controller:  emailController),
                    SizedBox(height: 20,),
          
                    // password
                    buildTextField("Password", controller: passwordController),
                    SizedBox(height: 20,),
          
                     // confirm password
                    buildTextField("Confirm Password", controller: confirmPasswordController),
                    SizedBox(height: 20,),

                    SizedBox(height: 58,),
                    
                    AppButton(txt: "Next", width: 312, height: 60, onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalDetailView()));
                    }),
                    SizedBox(height: 23,),
                    Text(
                      "Already have an account?",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: const Color(0xffB4B4B4),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
                    }
                      , child: Text(
                      "Login",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w700,
                        fontSize: 27.65,
                        color: const Color(0xff339D44),
                      ),
                    ),)
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget buildTextField(
        String label, {
          required TextEditingController controller,
          bool isPassword = false,
        }) {
      return TextField(
        controller: controller,
        obscureText: isPassword,
        style: GoogleFonts.raleway(
          fontSize: 13.33,
          color: const Color(0xff292929),
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: GoogleFonts.raleway(
            fontSize: 13.33,
            fontWeight: FontWeight.w400,
            color: const Color(0xffB4B4B4),
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
      );
    }


  }
