import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modarb_app/core/helper/extension.dart';
import 'package:modarb_app/core/networking/shared_pref_helper.dart';
import 'package:modarb_app/core/routing/routes.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'package:modarb_app/features/more_info/ui/widgets/build_list_tile.dart';

class MoreInfoScreen extends StatelessWidget{
  const MoreInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.h,
        title: Text('More',
        style: TextStyles.font23White700,
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.h), // Adjust the height of the line
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Divider(
              color: ColorsManager.lightWhite,
              height: 1.h,
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate(
            [
              BuildListTile(
                  title: 'My profile',
                  image: 'assets/icons/user.svg',
                  onTap: (){},
                ),
              BuildListTile(
                  title: 'Progress',
                  image: 'assets/icons/goal.svg',
                  onTap: (){},
                ),
              BuildListTile(
                  title: 'Injury Care Center',
                  image: 'assets/icons/care.svg',
                  onTap: (){},
                ),
              BuildListTile(
                  title: 'Challenges',
                 image: 'assets/icons/challenges.svg',
                  onTap: (){},
                ),
              BuildListTile(
                  title: 'Reminders',
                  image: 'assets/icons/bell.svg',
                  onTap: (){},
                ),
              BuildListTile(
                  title: 'Log out',
                  image: 'assets/icons/setting.svg',
                  onTap: () async {
                    await SharedPrefHelper.clearAllData();
                    context.pushNamedAndRemoveUntil(Routes.firstSplash,predicate: (Route<dynamic> route) => false);
                  },
                ),
            ]
          ))
        ],
      ),
    );
  }
}


