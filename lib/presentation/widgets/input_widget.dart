import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/constant/color_constant.dart';

class InputWidget extends StatelessWidget {
  final String lable;
  final bool isPassword;
  const InputWidget({super.key, required this.lable, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: GoogleFonts.inter(fontSize: 16, color: Color(0xFF0D1220)),
        ),
        Gap(8),
        TextField(
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Color(0xFF0D1220),
          ),
          obscureText: isPassword,
          decoration: InputDecoration(
            fillColor: Color(0xFFF7F9FC),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: ColorConstant.primary),
            ),
          ),
          cursorColor: Color(0xFF0D1220),
        ),
        Gap(20),
      ],
    );
  }
}
