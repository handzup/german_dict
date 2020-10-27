import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

import '../../core/theme.dart';
import '../../core/theme_controller.dart';
import '../widgets/bottom_nav_bar.dart';
import 'bookmarks_page.dart';
import 'main_page.dart';
import 'recent_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  ThemeMode _themeMode;
  int _currentIndex = 1;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    _themeMode = ThemeController.to.themeMode;

    return Scaffold(
        key: _scaffoldKey,
        drawer: MyDrawer(),
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 40,
          leading: IconButton(
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
            icon: Icon(Icons.menu),
          ),
        ),
        body: Stack(
          children: [
            PageView(
              physics: AlwaysScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (index) {
                print(index);
                setState(() => _currentIndex = index);
              },
              children: [RecentPage(), MainPage(), BookmarkPage()],
            ),
            Positioned(left: 0, right: 0, bottom: 0, child: _bottomBr)
          ],
        ));
  }

  Widget get _bottomBr {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(15),
        topLeft: Radius.circular(15),
      ),
      child: Container(
        child: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true,
          itemCornerRadius: 12,
          containerHeight: 56,
          backgroundColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          curve: Curves.linear,
          onItemSelected: (index) => setState(() {
            _currentIndex = index;
            print(index);
            _pageController.animateToPage(index,
                curve: Curves.linear, duration: Duration(milliseconds: 300));
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.history),
              title: Text(
                'Recent',
                style: TextStyle(color: Colors.black),
              ),
              activeColor: AppTheme.yellow,
              inactiveColor: AppTheme.red,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.search),
              title: Text(
                'Search',
                style: TextStyle(color: Colors.black),
              ),
              activeColor: AppTheme.yellow,
              inactiveColor: AppTheme.red,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.bookmark),
              title: Text(
                'Bookmarks',
                style: TextStyle(color: Colors.black),
              ),
              activeColor: AppTheme.yellow,
              inactiveColor: AppTheme.red,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
