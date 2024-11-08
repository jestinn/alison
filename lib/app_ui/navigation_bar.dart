import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../app_colors.dart';
import 'home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int? selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Widget>(
        future: _returnWidget(context),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return snapshot.data!;
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(14), topLeft: Radius.circular(14)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(14.0),
            topRight: Radius.circular(14.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: AppColors.bottomNavBg,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme:
                IconThemeData(size: 24, color: AppColors.bottomNavSelect),
            unselectedIconTheme:
                IconThemeData(size: 24, color: AppColors.bottomUnselect),
            items: [
              BottomNavigationBarItem(
                label: 'Swan',
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: SvgPicture.asset(
                    'assets/icons/brands.svg',
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: SvgPicture.asset(
                    'assets/icons/brands.svg',
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Brands',
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: SvgPicture.asset(
                    'assets/icons/Mask group.svg',
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: SvgPicture.asset(
                    'assets/icons/Mask group.svg',
                    color: AppColors.bottomNavSelect,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Best Items',
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: SvgPicture.asset(
                    'assets/icons/Mask group.svg',
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: SvgPicture.asset(
                    'assets/icons/Mask group.svg',
                    color: AppColors.bottomNavSelect,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Accounts',
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: SvgPicture.asset(
                    'assets/icons/Mask group.svg',
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: SvgPicture.asset(
                    'assets/icons/Mask group.svg',
                    color: AppColors.bottomNavSelect,
                  ),
                ),
              ),
            ],
            selectedItemColor: AppColors.bottomNavSelect,
            selectedLabelStyle: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
                color: AppColors.bottomNavBg),
            unselectedLabelStyle: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
                color: AppColors.bottomUnselect),
            unselectedItemColor: AppColors.bottomUnselect,
            iconSize: 18.0,
            selectedFontSize: 12.0,
            unselectedFontSize: 12.0,
            currentIndex: selectedIndex!,
            onTap: (int index) => _changeTab(index),
          ),
        ),
      ),
    );
  }

  void _changeTab(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Future<Widget> _returnWidget(BuildContext context) async {
    switch (selectedIndex) {
      case 0:
        return HomePage();
      case 1:
        return HomePage();
      case 2:
        return HomePage();

      case 3:
        return HomePage();
      default:
        return const SizedBox();
    }
  }
}
