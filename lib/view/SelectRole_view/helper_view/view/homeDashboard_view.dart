import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperFavourite/view/helperFavourite_view.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperHome/view/helperHome_view.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperPoints/view/helperPoints_view.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperProfile/view/helperProfile_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/home_view/view/home_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/inbox_view/inbox_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/profile_view/view/profile_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/shortList_view/view/shortList_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/token_view/token_view.dart';
import '../../../../res/appColors/App_Colors.dart';

class HelperDashboardView extends StatefulWidget {
  final int initialIndex;

  const HelperDashboardView({super.key, this.initialIndex = 0});

  @override
  State<HelperDashboardView> createState() => _HelperDashboardViewState();
}

class _HelperDashboardViewState extends State<HelperDashboardView> {
  late int _currentIndex;

  final List<Widget> _pages = [
    const HelperHomeView(),
     HelperFavouriteView(),
     HelperPointsView(),
     HelperProfileView(),
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
            icon: Image.asset(AppImages.heartIcon, width: 24, height: 24),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppImages.pointsIcon, width: 24, height: 24),
            label: "Points",
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
