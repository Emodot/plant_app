import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recommend_plants.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // It enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          const RecommendPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}
