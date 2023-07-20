import 'package:flutter/material.dart';
import 'package:niceapp/widgets/action_item.dart';
import 'package:niceapp/widgets/bottom_bar.dart';
import 'package:niceapp/widgets/item_card.dart';
import 'package:niceapp/widgets/list_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      backgroundColor: Colors.deepPurple.shade50,
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Cards",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                  InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () {},
                    child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: Colors.grey[300], shape: BoxShape.circle),
                          child: const Icon(Icons.add),
                        )),
                  )
                ],
              ),
            ),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 180,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  ItemCard(
                      color: Colors.deepPurpleAccent,
                      title: "\$5,000,000",
                      subTitle: "Ballance",
                      note: "420",
                      timestamp: "06/09"),
                  ItemCard(
                      color: Colors.deepOrangeAccent,
                      title: "\$5,000,000",
                      subTitle: "Ballance",
                      note: "420",
                      timestamp: "06/09"),
                  ItemCard(
                      color: Colors.teal,
                      title: "\$5,000,000",
                      subTitle: "Ballance",
                      note: "420",
                      timestamp: "06/09"),
                  ItemCard(
                      color: Colors.blueAccent,
                      title: "\$5,000,000",
                      subTitle: "Ballance",
                      note: "420",
                      timestamp: "06/09")
                ],
              ),
            ),
            const SizedBox(height: 25),
            SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: const ExpandingDotsEffect()),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      fit: FlexFit.tight,
                      child: ActionItem(
                        title: "Send",
                        iconImage: "assets/icons/send_money.png",
                      )),
                  Flexible(
                      fit: FlexFit.tight,
                      child: ActionItem(
                        title: "Pay",
                        iconImage: "assets/icons/credit_card.png",
                      )),
                  Flexible(
                      fit: FlexFit.tight,
                      child: ActionItem(
                        title: "Bills",
                        iconImage: "assets/icons/bills.png",
                      ))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  ListItem(
                    title: "Statistics",
                    subTitle: "Payments and Income",
                    icon: "assets/icons/statistics.png",
                  ),
                  ListItem(
                    title: "Transations",
                    subTitle: "view your transations",
                    icon: "assets/icons/transactions.png",
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
