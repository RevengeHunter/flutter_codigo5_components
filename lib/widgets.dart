import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

class AppointmentCard extends StatelessWidget {

  ImageProvider image;
  String name;
  String date;

  AppointmentCard({required this.image,required this.name, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 6.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 12.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            offset: const Offset(4, 4),
            blurRadius: 12.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.bottomRight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: image,
              ),
            ),
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Icon(
                Icons.circle_rounded,
                color: Colors.lightGreenAccent,
                size: 13.0,
              ),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff3D4A81),
                ),
              ),
              const SizedBox(
                height: 3.0,
              ),
              Text(
                date,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: const Color(0xff9DA4BF),
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 30.0,
                  padding: EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 2.0),
                  alignment: Alignment.center,
                  child: Text(
                    ":",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
