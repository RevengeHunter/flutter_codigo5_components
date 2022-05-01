import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OCardPage extends StatelessWidget {
  const OCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //Card 01
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 12.0,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
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
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
                    ),
                    radius: 25.0,
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Doe",
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
                        "Ceo at Apple Inc",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xff9DA4BF),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 28.0,
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 2.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xffDCE5FF),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.settings_outlined,
                                color: Color(0xff4D7CFF),
                                size: 15,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "Settings",
                                style: TextStyle(
                                  color: Color(0xff4D7CFF),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Card 02
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 12.0,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 15.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      color: Color(0xffDCE5FF),
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    child: Icon(
                      Icons.science_outlined,
                      color: Color(0xff2D71FF).withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The quick, brown fox jumps over",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: Color(0xff3D4A81),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from",
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Color(0xff9DA4BF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Card 03
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 12.0,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.07),
                    offset: const Offset(4, 4),
                    blurRadius: 12.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Lorem ipsum dolor sit amet, conseteur",
                          style: GoogleFonts.montserrat(
                            color: Color(0xff3D4A81),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "On",
                                style: GoogleFonts.montserrat(
                                  color: Color(0xff004EFF),
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.toggle_on,
                                size: 32.0,
                                color: Color(0xff004EFF),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 30.0,
                    indent: 10.0,
                    endIndent: 10.0,
                    color: Color(0xffD6D6D6),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Lorem ipsum dolor sit amet, conseteur",
                          style: GoogleFonts.montserrat(
                            color: Color(0xff3D4A81),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Off",
                                style: GoogleFonts.montserrat(
                                  color: Color(0xff3D4A81),
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Icon(
                                Icons.toggle_off,
                                size: 32.0,
                                color: Color(0xffDFDFDF),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
