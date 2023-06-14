import 'package:flutter/material.dart';

import '../../../account/presentation/pages/account_page.dart';
import '../../../favorite/presentation/pages/favorite_page.dart';
import '../../../holland_go/presentation/pages/holland_go_page.dart';
import '../../../home/presentation/pages/home_page.dart';
import '../../../offers/presentation/pages/offers_page.dart';
import '../widgets/custom_bottom_navigation_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  void _onTap(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = const [
    HomePage(),
    OffersPage(),
    FavoritePage(),
    HollandGoPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // TODO: recheck this line
      body: _pages[_currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: _onTap,
        currentIndex: _currentIndex,
      ),
    );
  }
}
