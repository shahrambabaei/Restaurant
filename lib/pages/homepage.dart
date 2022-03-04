import 'package:flutter/material.dart';
import 'package:rest/pages/home.dart';
import 'package:rest/pages/search.dart';
import 'package:rest/pages/cart.dart';
import 'package:rest/pages/setting.dart';
import 'package:rest/widgets/appbaritem.dart';
import 'package:rest/widgets/bottomnavitem.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;
  double W = 0, H = 0;
  @override
  void didChangeDependencies() {
    W = MediaQuery.of(context).size.width;
    H = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }

  List screens = [const Home(), const Search(), const Cart() , const Setting()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarItem(width: W, height: H * .08),
      body: screens[selected],
      bottomNavigationBar: BottomNavigation(
        onClick: bottomNavClick,
      ),
    );
  }

  void bottomNavClick(int index) => setState(() => selected = index);
}
