import 'package:flutter_onboard/flutter_onboard.dart';

class OnBoardData {
  static final List<OnBoardModel> onBoardData = [
    const OnBoardModel(
      title: "Buy different items online",
      description: "Let your shopping beast unleash",
      imgUrl: "assets/images/onboard/onboard_one.png",
    ),
    const OnBoardModel(
      title: "Add your favorite items to your cart.",
      description: "There are thousands of items that you can pick from.",
      imgUrl: 'assets/images/onboard/onboard_two.png',
    ),
    const OnBoardModel(
      title: "Buy your dream.",
      description: "Buy and get your item within a day.",
      imgUrl: 'assets/images/onboard/onboard_three.png',
    ),
  ];
}
