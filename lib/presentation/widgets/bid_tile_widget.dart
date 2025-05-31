import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Bid {
  final String image;
  final String title;
  final String price;
  final String ends;

  const Bid({
    required this.image,
    required this.title,
    required this.ends,
    required this.price,
  });
}

class BidTileWidget extends StatelessWidget {
  final Bid bid;
  const BidTileWidget({super.key, required this.bid});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 270,
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
                  image: NetworkImage(bid.image),
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
                      bid.title,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    Gap(8),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: 'Ends in '),
                          TextSpan(
                            text: bid.ends,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFF86780),
                            ),
                          ),
                        ],
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Color(0xFF909Fb4),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  bid.price,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
