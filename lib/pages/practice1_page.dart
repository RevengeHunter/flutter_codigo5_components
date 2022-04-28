import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class Practice1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              alignment: Alignment.center,
              child: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 17.0,
              ),
              child: ReusableWidget(
                title: "Connections",
                description: "WI-FI · Bluetooth · Flight Mode",
                iconData: Icons.wifi,
                colorBackgroundIcon: Color(0xff4895ef),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 17.0,
              ),
              child: Column(
                children: [
                  ReusableWidget(
                    title: "Sounds and vibration",
                    description: "Sounds Mode · Ringtone",
                    iconData: Icons.volume_up,
                    colorBackgroundIcon: const Color(0xffc77dff),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Divider(
                    color: Colors.black.withOpacity(0.2),
                    indent: 50.0,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  ReusableWidget(
                    title: "Notifications",
                    description: "Status bar · Do not disturb",
                    iconData: Icons.notifications,
                    colorBackgroundIcon: const Color(0xffffaa00),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 17.0,
              ),
              child: Column(
                children: [
                  ReusableWidget(
                    title: "Display",
                    description:
                        "Brightness · Eye comfort shield · Navigation bar",
                    iconData: Icons.wb_sunny_rounded,
                    colorBackgroundIcon: Colors.green,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Divider(
                    color: Colors.black.withOpacity(0.2),
                    indent: 50.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
