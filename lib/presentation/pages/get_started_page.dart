import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/presentation/pages/sign_up_page.dart';
import 'package:nft_market/presentation/widgets/button_widget.dart';
import 'package:nft_market/presentation/widgets/page_widget.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});
  @override
  Widget build(BuildContext context) {
    return PageWidget(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Illustration.png'),
            Gap(60),
            Text(
              'Collect NFTs As\nYour Own Collection',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                height: 36 / 26,
              ),
            ),
            Gap(20),
            Text(
              'NFT is gonna help us to keep what is belong to us, like forever',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(fontSize: 16, height: 26 / 16),
            ),
            Gap(40),
            ButtonWidget(
              text: "Getting Started",
              onPressed: () {
                Navigator.of(
                  context,
                ).pushReplacement(
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
