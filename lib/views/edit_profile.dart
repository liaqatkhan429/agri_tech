import 'package:agri_tech/provider/user.dart';
import 'package:agri_tech/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../model/user.dart';
import '../services/user.dart';

class EditProfileView extends StatefulWidget {
  EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    var userProvider = Provider.of<UserProvider>(context, listen: false);

    nameController = TextEditingController(
      text: userProvider.getUser().name.toString(),
    );
    emailController = TextEditingController(
      text: userProvider.getUser().email.toString(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Column(
              children: [
                SizedBox(height: 5),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        "assets/arrow_back_icon.png",
                        height: 24,
                        width: 24,
                      ),
                    ),

                    SizedBox(width: 20),
                    Text(
                      "Edit Profile",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w700,
                        fontSize: 23.04,
                        color: const Color(0xff292929),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Divider(color: Color(0xffD4D4D4).withOpacity(0.1)),
                Stack(
                  children: [
                    Container(
                      height: 82,
                      width: 82,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/profileimage.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff339D44),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.edit_outlined,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Utils().buildTextField("Name", 1, controller: nameController),
                SizedBox(height: 24),
                Utils().buildTextField("Email", 1, controller: emailController),
                SizedBox(height: 356),
                isLoading
                    ? Center(child: CircularProgressIndicator())
                    : AppButton(
                        txt: "Save Changes",
                        width: double.infinity,
                        height: 60,
                        onPress: () async {
                          try {
                            isLoading = true;
                            setState(() {});
                            await UserServices()
                                .updateUser(
                                  UserModel(
                                    docId: userProvider
                                        .getUser()
                                        .docId
                                        .toString(),
                                    name: nameController.text,
                                    email: emailController.text,
                                  ),
                                )
                                .then((val) async {
                                  await UserServices()
                                      .getUserProfile(
                                        userProvider.getUser().docId.toString(),
                                      )
                                      .then((userData) {
                                    isLoading = false;
                                    setState(() {});
                                        userProvider.setUser(userData);
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              "Profile Updated Successfully",
                                            ),
                                          ),
                                        );
                                      });
                                });
                          } catch (e) {
                            isLoading = false;
                            setState(() {});
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(e.toString())),
                            );
                          }
                        },
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
