import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/presentation/widgets/button_widget.dart';
import 'package:nft_market/presentation/widgets/input_widget.dart';
import 'package:nft_market/presentation/widgets/page_widget.dart';
import 'package:gap/gap.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _body(),
            TextButton(
              onPressed: () {},
              child: Text(
                'Sign In to My Account',
                style: GoogleFonts.inter(
                  color: Color(0xFF909FB4),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Gap(60),
          Text(
            'Start Collecting\nAmazing Artworks',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              height: 36 / 26,
            ),
          ),
          Gap(40),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                InputWidget(lable: 'Full Name'),
                InputWidget(lable: 'Email'),
                InputWidget(lable: 'Password', isPassword: true),
                Gap(10),
                ButtonWidget(
                  text: 'Continue',
                  onPressed: () {},
                  isFullWidth: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
