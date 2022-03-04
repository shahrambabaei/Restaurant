import 'package:flutter/material.dart';

class AppBarItem extends StatelessWidget implements PreferredSizeWidget {
  final double width, height;
  const AppBarItem({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      height: height,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius:17 ,
                    foregroundImage: AssetImage('lib/assets/images/child.jpg'),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 8),
                      child: const Text(
                        'Sam James',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              Row(
                children: [
                  InkWell(
                      borderRadius: BorderRadius.circular(20),
                      enableFeedback: false,
                      onTap: () {},
                      child: const Icon(Icons.search,
                          size: 25, color: Color(0xffA8A8A8))),
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: InkWell(
                        borderRadius: BorderRadius.circular(24),
                        enableFeedback: false,
                        onTap: () {},
                        child: const Icon(Icons.notifications_sharp,
                            size: 25, color: Color(0xffA8A8A8))),
                  )
                ],
              )
            ],
          )),
    );
  }

  @override
  Size get preferredSize => Size(width, height);
}
