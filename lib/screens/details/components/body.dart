import 'package:flutter/material.dart';

import '../../../components/image_and_icons.dart';
import '../../../components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          const TitleAndPrice(
            title: "Samanta",
            country: "Ghana",
            price: 440,
          ),
        ],
      ),
    );
  }
}

