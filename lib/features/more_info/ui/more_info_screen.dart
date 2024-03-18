import 'package:flutter/material.dart';
import 'package:modarb_app/core/theming/colors.dart';
import 'package:modarb_app/core/theming/styles.dart';
import 'widgets/item_of_more_list.dart';

class MoreInfoScreen extends StatelessWidget{
  const MoreInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text('More',
        style: TextStyles.font23White700,
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0), // Adjust the height of the line
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              color: ColorsManager.lightWhite,
              height: 1.0,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          BuildListTile(
            title: 'My profile',
            icon: Icons.person,
            onTap: (){},
          ),
          BuildListTile(
            title: 'Progress',
            icon: Icons.ac_unit,
            onTap: (){},
          ),
          BuildListTile(
            title: 'Injury Care Center',
            icon: Icons.ac_unit,
            onTap: (){},
          ),
          BuildListTile(
            title: 'Challenges',
            icon: Icons.ac_unit,
            onTap: (){},
          ),
          BuildListTile(
            title: 'Reminders',
            icon: Icons.ac_unit,
            onTap: (){},
          ),
          BuildListTile(
            title: 'Settings',
            icon: Icons.settings,
            onTap: (){},
          ),
        ],
      ),
    );
  }
}


