import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_interview/main.dart';
import 'package:tech_interview/theme/custom_colors.dart';
import 'package:tech_interview/views/screens/update_profile_screen.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.neutralDefault,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: Color(0xff214883),
        unselectedItemColor: Color(0xffB8B8B8),
        backgroundColor: Colors.white,
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
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: false,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Account',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          )),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        children: [
          Card(
            elevation: 0,
            color: Color(0xffFCFCFC),
            shape: CircleBorder(),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: CircleAvatar(
                radius: 48,
                backgroundColor: Color(0xffe0e0e0),
                child: Text('JL',
                    style: TextStyle(
                        fontSize: 24,
                        color: CustomColors.neutralWeak,
                        fontWeight: FontWeight.w500)),
              ),
            ),
          ),
          SizedBox(height: 6),
          Text(
            'Jonathan Mensah',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w600, color: CustomColors.neutralStronger),
          ),
          SizedBox(height: 4),
          Text('0244123456',
              textAlign: TextAlign.center, style: TextStyle(color: CustomColors.neutralWeak)),
          SizedBox(height: 4),
          Card(
            elevation: 0,
            color: Color(0xffFFFFFC),
            child: Column(
              children: [
                SizedBox(height: 6),
                GestureDetector(
                    onTap: () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => UpdateProfileScreen())),
                    child: SectionListTile(title: 'Update profile', svgPath: 'assets/user.svg')),
                Divider(color: CustomColors.neutralDefault),
                SectionListTile(title: 'Service preference', svgPath: 'assets/monitor-mobbile.svg'),
                Divider(color: CustomColors.neutralDefault),
                SectionListTile(title: 'Availability', svgPath: 'assets/clock.svg'),
                Divider(color: CustomColors.neutralDefault),
                SectionListTile(
                    title: 'Manage notifications', svgPath: 'assets/notification-status.svg'),
                Divider(color: CustomColors.neutralDefault),
                SectionListTile(title: 'Support', svgPath: 'assets/messages-2.svg'),
                SizedBox(height: 6),
              ],
            ),
          ),
          SizedBox(height: 12),
          Card(
            elevation: 0,
            color: Color(0xffFFFFFC),
            child: Column(
              children: [
                SizedBox(height: 6),
                SectionListTile(title: 'Change password', svgPath: 'assets/lock.svg'),
                Divider(color: CustomColors.neutralDefault),
                SectionListTile(title: 'Request account deletion', svgPath: 'assets/danger.svg'),
                Divider(color: CustomColors.neutralDefault),
                SectionListTile(
                  title: 'Logout',
                  svgPath: 'assets/logout.svg',
                  titleTextColor: Color(0xffC53030),
                  trailing: SizedBox.shrink(),
                ),
                Divider(color: CustomColors.neutralDefault),
                SectionListTile(
                    title: 'App version', svgPath: 'assets/mobile.svg', trailing: Text('1.0.0')),
                SizedBox(height: 6),
              ],
            ),
          )
        ],
      ),
    );
  }
}
