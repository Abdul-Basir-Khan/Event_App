import 'package:event_app/screen/chat_screen/chat_screen.dart';
import 'package:event_app/screen/event_screen/event_screen.dart';
import 'package:flutter/material.dart';
import '../theme/app_color.dart';
import '../theme/app_textstyle.dart';

class BottomNavAppBar extends StatefulWidget {
  const BottomNavAppBar({super.key});

  @override
  State<BottomNavAppBar> createState() => _BottomNavAppBarState();
}

class _BottomNavAppBarState extends State<BottomNavAppBar> {
  final List<Widget> _bottomNavItem = [
    ChatScreen(),
    EventScreen(),

  ];
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: const Color(0xffFFFFFF),
        body: _bottomNavItem[_currentIndex],
        bottomNavigationBar: BottomAppBar(
          surfaceTintColor: Colors.white,
          color: AppColors.primaryWhite,
          padding: EdgeInsets.zero,
          height: 70,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
                color: AppColors.primaryGray.withOpacity(0.10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomTab(
                  onTap: () {
                    onTabTapped(0);
                  },
                  activeColor: _currentIndex == 0
                      ? AppColors.primaryBlack
                      : AppColors.primaryWhite,
                  title: 'Chat',
                  icon: Icon(Icons.chat,color: _currentIndex == 0
                      ? AppColors.primaryBlack
                      : AppColors.primaryWhite,),
                ),
                BottomTab(
                  onTap: () {
                    onTabTapped(1);
                  },
                  activeColor: _currentIndex == 1
                      ? AppColors.primaryBlack
                      : AppColors.primaryWhite,
                  title: 'Event',
                  icon: Icon(Icons.event,color: _currentIndex == 1
                      ? AppColors.primaryBlack
                      : AppColors.primaryWhite,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomTab extends StatelessWidget {
  final String title;
  final Color activeColor;
  final Widget icon;
  final VoidCallback onTap;

  const BottomTab({
    super.key,
    required this.title,
    required this.activeColor,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
        icon,
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: AppTextStyles.regularStyle.copyWith(color: activeColor),
          )
        ],
      ),
    );
  }
}