import 'package:flutter/material.dart';
import 'package:kirantask/widget/images.dart';
import 'package:kirantask/widget/invite_card.dart';
import 'package:kirantask/widget/jems_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Text",
          style: Theme.of(context).textTheme.button,
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InviteCard(
                title: "Blue Jeans Cap",
                img: AppImage.hat,
                days: "2 days to go",
                deal: "Limited time deal",
                invite: "invites 10 friends to grab this special deal",
                left: "2 item left",
              ),
              const SizedBox(height: 15,),
              JemsCard(
                title: "Blue Jeans Cap",
                img: AppImage.hat,
                days: "2 days to go",
                deal: "Limited time deal",
                left: "2 item left",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
