import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_interview/main.dart';
import 'package:tech_interview/theme/custom_colors.dart';
import 'package:tech_interview/theme/custom_typography.dart';
import 'package:tech_interview/views/screens/update_profile_screen.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.textNeutralDefault,
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: 2,
          selectedItemColor: CustomColors.blue700,
          unselectedItemColor: CustomColors.iconNeutralWeaker,
          backgroundColor: Colors.white,
          selectedLabelStyle: CustomTypography.subTextSmallRegular,
          items: [
            BottomNavigationBarItem(label: 'Home', icon: SvgPicture.asset('assets/home.svg')),
            BottomNavigationBarItem(
              label: 'Requests',
              icon: SvgPicture.asset(
                'assets/monitor-mobbile.svg',
                colorFilter: const ColorFilter.mode(Colors.white, BlendMode.saturation),
              ),
            ),
            BottomNavigationBarItem(label: 'Account', icon: SvgPicture.asset('assets/profile.svg')),
          ],
        ),
      ),
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: false,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: CustomText.h4SemiBold('Account', textColor: CustomColors.textNeutralStronger),
          )),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        children: [
          Card(
            elevation: 0,
            color: CustomColors.borderNeutralWeakest,
            shape: CircleBorder(),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: CircleAvatar(
                radius: 48,
                backgroundColor: Color(0xffe0e0e0),
                child: CustomText.h3Medium('JL', textColor: CustomColors.textNeutralWeak),
              ),
            ),
          ),
          SizedBox(height: 6),
          CustomText.h5SemiBold('Jonathan Mensah',
              textAlign: TextAlign.center, textColor: CustomColors.textNeutralStronger),
          SizedBox(height: 4),
          CustomText.bodySmallRegular('0244123456',
              textAlign: TextAlign.center, textColor: CustomColors.textNeutralWeak),
          SizedBox(height: 4),
          Card(
            elevation: 0,
            color: CustomColors.fillPrimaryWhite,
            child: Column(
              children: [
                SizedBox(height: 6),
                GestureDetector(
                    onTap: () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => UpdateProfileScreen())),
                    child: SectionListTile(title: 'Update profile', svgPath: 'assets/user.svg')),
                Divider(color: CustomColors.textNeutralDefault),
                SectionListTile(title: 'Service preference', svgPath: 'assets/monitor-mobbile.svg'),
                Divider(color: CustomColors.textNeutralDefault),
                SectionListTile(title: 'Availability', svgPath: 'assets/clock.svg'),
                Divider(color: CustomColors.textNeutralDefault),
                SectionListTile(
                    title: 'Manage notifications', svgPath: 'assets/notification-status.svg'),
                Divider(color: CustomColors.textNeutralDefault),
                SectionListTile(title: 'Support', svgPath: 'assets/messages-2.svg'),
                SizedBox(height: 6),
              ],
            ),
          ),
          SizedBox(height: 12),
          Card(
            margin: EdgeInsets.only(left: 6, right: 6, bottom: 0),
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            )),
            color: CustomColors.fillPrimaryWhite,
            child: Column(
              children: [
                SizedBox(height: 6),
                SectionListTile(title: 'Change password', svgPath: 'assets/lock.svg'),
                Divider(color: CustomColors.textNeutralDefault),
                SectionListTile(title: 'Request account deletion', svgPath: 'assets/danger.svg'),
                Divider(color: CustomColors.textNeutralDefault),
                SectionListTile(
                    title: 'Logout',
                    svgPath: 'assets/logout.svg',
                    titleTextColor: Color(0xffC53030),
                    trailing: SizedBox.shrink()),
                SizedBox(height: 6),
              ],
            ),
          ),
          Divider(color: CustomColors.textNeutralDefault, height: 0),
          Card(
              margin: EdgeInsets.only(left: 6, right: 6, bottom: 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              )),
              elevation: 0,
              color: CustomColors.fillNeutralWeak, //#FCFCFC
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SectionListTile(
                    title: 'App version',
                    svgPath: 'assets/mobile.svg',
                    trailing: CustomText.bodySmallRegular('1.0.0',
                        textColor: CustomColors.textNeutralWeak)),
              )),
          SizedBox(height: 6),
        ],
      ),
    );
  }
}
