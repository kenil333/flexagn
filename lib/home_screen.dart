import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kirantask/widget/images.dart';
import 'package:kirantask/widget/invite_card.dart';
import 'package:kirantask/widget/jems_card.dart';
import 'package:kirantask/widget/modal.dart';

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
          padding: EdgeInsets.all(10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InviteCard(
                data: Data(img: AppImage.hat, title: "Blue Jeans Cap",days: "2 days to go", deal: "Limited time deal", left: "2 item left", invites: "Invites 10 friends to grab this special deals"),
              ),
              JemsCard(
                data: Data(img: AppImage.hat, title: "Blue Jeans Cap",days: "2 days to go", deal: "Limited time deal", left: "2 item left",),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
