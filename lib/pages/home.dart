import 'package:flutter/material.dart';
import 'package:rest/models/offer.dart';
import 'package:rest/widgets/appbaritem.dart';
import 'package:rest/widgets/bottomnavitem.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double W = 0, H = 0;
  @override
  void didChangeDependencies() {
    W = MediaQuery.of(context).size.width;
    H = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }

  List<Offer> offerList = [
    Offer(icon: Icons.health_and_safety_outlined, text: "Health"),
    Offer(icon: Icons.food_bank_outlined, text: "food" "food"),
    Offer(icon: Icons.travel_explore, text: "Travel"),
    Offer(icon: Icons.cast_for_education, text: "Education"),
    Offer(icon: Icons.chat_outlined, text: "Chat"),
    Offer(icon: Icons.health_and_safety_outlined, text: "Health"),
    Offer(icon: Icons.food_bank_outlined, text: "food" "food"),
    Offer(icon: Icons.travel_explore, text: "Travel"),
    Offer(icon: Icons.cast_for_education, text: "Education"),
    Offer(icon: Icons.chat_outlined, text: "Chat"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  //^create  Body
  Widget buildBody() => Column(
        children: [buildActiomn(), buildoffers(), buildFoodImage()],
      );

//^ buildActions
  Widget buildActiomn() => Container(
      margin: EdgeInsets.only(top: H * .04, bottom: H * .05),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildActionItem(Icons.outbox_sharp, 'SEND'),
            buildActionItem(Icons.move_to_inbox_rounded, 'RECEIVE'),
            buildActionItem(Icons.account_balance_wallet_rounded, 'BALANCE')
          ],
        ),
      ));

//^buildActionItem
  Widget buildActionItem(IconData icon, String text) => Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: H * .01),
            height: H * .14,
            width: W * .28,
            decoration: BoxDecoration(
                color: const Color(0xff127475),
                borderRadius: BorderRadius.circular(8)),
            child: Icon(
              icon,
              size: 50,
              color: Colors.white,
            ),
          ),
          Text(text,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold))
        ],
      );

  //^buildOffers
  Widget buildoffers() => Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Offers  Available',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: H * .16,
            margin: EdgeInsets.only(top: H * .01),
            padding: const EdgeInsets.only(left: 15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: offerList.length,
              itemBuilder: (context, index) {
                return Container(child: buildListItem(index));
              },
            ),
          )
        ],
      );

  //^buildListItem
  Widget buildListItem(int index) => Container(
      margin: const EdgeInsets.only(right: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(16),
              shadowColor: Colors.grey,
              child: Container(
                  padding: EdgeInsets.all(H * .025),
                  child: Icon(offerList[index].icon,
                      color: const Color(0xff85A7A7), size: 37))),
          Text(offerList[index].text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
        ],
      ));

//^build foodImage
  Widget buildFoodImage() => Container(
      margin: EdgeInsets.only(top: H * .04),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Stack(
          fit: StackFit.passthrough,
          alignment: Alignment.bottomCenter,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset('lib/assets/images/food.jpg',
                    fit: BoxFit.cover, width: W, height: H * .25)),
            Container(
                height: H * .08,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.6),
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(12))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: W * .045),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Punjabiyat',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('50% Off',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13))
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Order Now',
                            style: TextStyle(
                                color: Color(0xff127475),
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        style: ElevatedButton.styleFrom(
                            enableFeedback: false,
                            primary: Colors.white,
                            onPrimary: Colors.grey),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ));
}
