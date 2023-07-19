import 'package:flutter/material.dart';

import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:smart_school/config/theme.dart';
import 'package:smart_school/pages/account.dart';
import 'package:smart_school/pages/beranda_page.dart';
import 'package:smart_school/pages/contact_page.dart';
import 'package:smart_school/pages/ppdb_page.dart';

class MainPage extends StatefulWidget {
  final int pageIndex;
  const MainPage({Key? key, this.pageIndex = 0}) : super(key: key);

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int currentPageIndex = 0;
  PersistentTabController? _controller;
  List<Widget> listPage() {
    return [
      const BerandaPage(),
      const PpdbPage(),
      const ContactPage(),
      const AccountPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home_rounded),
        title: ("Beranda"),
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: kGreyColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.chat_outlined),
        title: ("Chat"),
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: kGreyColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.support_agent),
        title: ("Kontak"),
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: kGreyColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person_2_rounded),
        title: ("Profil"),
        activeColorPrimary: kPrimaryColor,
        inactiveColorPrimary: kGreyColor,
      ),
    ];
  }

  Future<bool> _onWillPop() async {
    // This dialog will exit your app on saying yes
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Apakah anda yakin ingin keluar dari aplikasi ?'),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: kPrimaryColor,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('Tidak'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: kPrimaryColor,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('ya'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: widget.pageIndex ?? 0);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onWillPop,
        child: Center(
          child: PersistentTabView(
            context,
            // onItemSelected: Tap,
            controller: _controller,
            screens: listPage(),
            items: _navBarsItems(),
            confineInSafeArea: true,
            stateManagement: true,
            backgroundColor: Colors.white,
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset: true,
            popActionScreens: PopActionScreensType.all,
            hideNavigationBarWhenKeyboardShows: true,
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            popAllScreensOnTapOfSelectedTab: true,
            navBarStyle: NavBarStyle.style3,
          ),
        ));
  }
}
