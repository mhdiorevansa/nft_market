import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/constant/color_constant.dart';
import 'package:nft_market/presentation/widgets/bid_tile_widget.dart';
import 'package:nft_market/presentation/widgets/browse_tile_widget.dart';
import 'package:nft_market/presentation/widgets/page_widget.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      bottomNavigationBar: _bottomNavigationBar(),
      child: SingleChildScrollView(
        child: Column(children: [_userInfo(), _popularBids(), _browse()]),
      ),
    );
  }

  Widget _userInfo() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: ColorConstant.primary),
                  borderRadius: BorderRadius.circular(60 / 2),
                ),
                child: Image.asset('assets/images/User1.png'),
              ),
              Gap(12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Abdel',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFF0D1220),
                    ),
                  ),
                  Gap(6),
                  Text(
                    'Level 100',
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Color(0xFF909F84),
                    ),
                  ),
                ],
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
            ),
          ),
        ],
      ),
    );
  }

  Widget _popularBids() {
    var bids = [
      Bid(
        image:
            "https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        title: "Etherium",
        ends: "35m 12s",
        price: "12.4",
      ),
      Bid(
        image:
            "https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        title: "BitCoin",
        ends: "35m 12s",
        price: "12.4",
      ),
    ];
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: _listTile(
        title: 'Popular Bids',
        itemHeight: 268,
        itemCount: bids.length,
        itemBuilder: (context, index) => BidTileWidget(bid: bids[index]),
      ),
    );
  }

  Widget _browse() {
    var browse = [
      Browse(
        image:
            "https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        title: "Vectore",
        itemsCount: 124,
      ),
      Browse(
        image:
            "https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        title: "Vectore",
        itemsCount: 124,
      ),
      Browse(
        image:
            "https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        title: "Vectore",
        itemsCount: 124,
      ),
    ];

    return Padding(
      padding: EdgeInsets.only(bottom: 30, top: 10),
      child: _listTile(
        title: 'Browse',
        itemHeight: 268,
        itemCount: browse.length,
        itemBuilder: (context, index) =>
            BrowseTileWidget(browse: browse[index]),
      ),
    );
  }

  Column _listTile({
    required String title,
    required double itemHeight,
    required NullableIndexedWidgetBuilder itemBuilder,
    int itemCount = 5,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            title,
            style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        Gap(16),
        SizedBox(
          height: itemHeight,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 24),
            itemBuilder: itemBuilder,
            separatorBuilder: (context, index) => Gap(24),
            itemCount: itemCount,
          ),
        ),
      ],
    );
  }

  Widget _bottomNavigationBar() {
    var menus = ["Discover", "History", "Wishlist", "Setting"];
    var active = 0;
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 24),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: menus.asMap().entries.map<Widget>((element) {
          return TextButton(
            onPressed: () {},
            child: SizedBox(
              height: 60,
              width: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SvgPicture.asset(
                  //   'assets/svgs/icon_${element.value.toLowerCase()}.svg',
                  // ),
                  Gap(6),
                  Text(
                    element.value,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: active == element.key
                          ? ColorConstant.primary
                          : Color(0xFF909FB4),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
