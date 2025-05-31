import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Browse {
  final String image;
  final String title;
  final int itemsCount;

  const Browse({
    required this.image,
    required this.title,
    required this.itemsCount,
  });
}

class BrowseTileWidget extends StatelessWidget {
  final Browse browse;
  const BrowseTileWidget({super.key, required this.browse});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(browse.image),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      browse.title,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    Gap(8),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: '${browse.itemsCount} items'),
                        ],
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Color(0xFF909Fb4),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
