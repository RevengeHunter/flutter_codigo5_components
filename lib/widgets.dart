import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  IconData iconData;
  String title;
  String description;
  Color colorBackgroundIcon;

  ReusableWidget({
    required this.iconData,
    required this.title,
    required this.description,
    required this.colorBackgroundIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: colorBackgroundIcon,
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 3.0,
            vertical: 3.8,
          ),
          child: Icon(
            iconData,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 18.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black.withOpacity(0.72),
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(
              description,
              style: TextStyle(
                color: Colors.black.withOpacity(0.35),
                fontWeight: FontWeight.w500,
                fontSize: 13.0,
              ),
            ),
          ],
        )
      ],
    );
  }
}
