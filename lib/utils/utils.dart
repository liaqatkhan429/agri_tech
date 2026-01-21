import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppButton extends StatelessWidget {
  final String txt;
  final double height;
  final double width;
  final VoidCallback? onPress;
  const AppButton({super.key, required this.txt, required this.width, required this.height, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Color(0xff339D44),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 0,
        ),
        child: Text(
          txt,
          style: GoogleFonts.raleway(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class Utils{
  Widget buildTextField(
      String label, int line, {
        required TextEditingController controller,

      }) {
    return TextField(
      controller: controller,
      maxLines: line,
      style: GoogleFonts.raleway(
        fontSize: 13.33,
        color: const Color(0xff292929),
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        labelText: label,
        alignLabelWithHint: true,
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
    );}

}
