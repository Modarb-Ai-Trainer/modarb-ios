import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../core/theming/colors.dart';

class SmoothPage extends StatelessWidget {
  const SmoothPage({Key? key, required this.boardController}) : super(key: key);

  final PageController boardController ;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SmoothPageIndicator(
        controller: boardController,
        effect:  const ExpandingDotsEffect(
          dotHeight: 10,
          expansionFactor: 4,
          spacing: 5 ,
          dotWidth: 10,
          dotColor: Colors.grey,
          activeDotColor: ColorsManager.mainPurple,
        ),
        count: 3,

      ),
    );
  }
}
