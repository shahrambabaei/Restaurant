import 'package:flutter/material.dart';
import 'package:rest/models/bottomnavitem.dart';

class BottomNavigation extends StatefulWidget {
  final void Function(int index)? onClick;
  const BottomNavigation({Key? key, required this.onClick}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selected = 0;
  double W = 0, H = 0;
  @override
  void didChangeDependencies() {
    H = MediaQuery.of(context).size.height;
    W = MediaQuery.of(context).size.width;
    super.didChangeDependencies();
  }

  List<BottomNavItem> itemList = [
    BottomNavItem(icon: Icons.home, text: "Home"),
    BottomNavItem(icon: Icons.search, text: "Search"),
    BottomNavItem(icon: Icons.add_shopping_cart_outlined, text: "Cart"),
    BottomNavItem(icon: Icons.settings, text: "Settings"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .08,
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              color: const Color(0xff006a78),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  bottomNavigationItem(0),
                  const SizedBox(),
                  bottomNavigationItem(1),
                  const SizedBox(
                    width: 30,
                  ),
                  bottomNavigationItem(2),
                  const SizedBox(),
                  bottomNavigationItem(3)
                ],
              )),
          Positioned(
              top: -H * .042,
              child: InkWell(
                  enableFeedback: false,
                  onTap: () {},
                  child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey)),
                      child: CircleAvatar(
                        radius: H * .042,
                        backgroundColor: Colors.white,
                        child: const Icon(
                          Icons.qr_code_scanner_sharp,
                          size: 30,
                          color: Color(0xff006a78),
                        ),
                      ))))
        ],
      ),
    );
  }

  //^bottomNavigationItem
  Widget bottomNavigationItem(int index) {
    final color = selected == index ? Colors.black87 : Colors.grey;
    return InkWell(
        enableFeedback: false,
        onTap: () {
          (widget.onClick ?? (int index) {})(index);
          setState(() => selected = index);
        },
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                itemList[index].icon,
                color: color,
              ),
              Text(
                itemList[index].text,
                style: TextStyle(color: color),
              )
            ],
          ),
        ));
  }
}
