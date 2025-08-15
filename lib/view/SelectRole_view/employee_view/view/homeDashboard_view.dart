import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/home_view/view/home_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/inbox_view/inbox_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/profile_view/view/profile_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/shortList_view/view/shortList_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/token_view/token_view.dart';
import '../../../../res/appColors/App_Colors.dart';

class HomeDashboardView extends StatefulWidget {
  final int initialIndex;

  const HomeDashboardView({super.key, this.initialIndex = 0});

  @override
  State<HomeDashboardView> createState() => _HomeDashboardViewState();
}

class _HomeDashboardViewState extends State<HomeDashboardView> {
  late int _currentIndex;

  final List<Widget> _pages = [
    const HomeView(),
    const ShortlistView(),
    const TokenView(),
    const InboxView(),
    const ProfileView(),
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex.clamp(0, _pages.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: AppColors.buttonColor,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(AppImages.homeeIcon, width: 24, height: 24),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppImages.shortList, width: 24, height: 24),
            label: "Shortlist",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppImages.token, width: 24, height: 24),
            label: "Token",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppImages.chat, width: 24, height: 24),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppImages.profile, width: 24, height: 24),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
