import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets.dart';

class BCardPage extends StatelessWidget {
  const BCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(
                horizontal: 22.0,
                vertical: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.drag_handle,
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 10,
                        ),
                      ),
                      Icon(
                        Icons.calendar_today_outlined,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    "Welcome Back!",
                    style: TextStyle(
                      color: Color(0xff9DA4BF),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Dr. Peterson",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontWeight: FontWeight.w700,
                      fontSize: 35.0,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  //Card Blue
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 15.0,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(17.0),
                        topLeft: Radius.circular(17.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Text(
                                "Appointment Request",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white.withOpacity(0.6),
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.7,
                                ),
                              ),
                            ),
                            const Text(
                              ":",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.access_time_filled_outlined,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "12 Jan 2020, 8am - 10am",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white.withOpacity(0.8),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //Card White
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 15.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(17.0),
                        bottomLeft: Radius.circular(17.0),
                      ),
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
                          margin: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 6.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Louis",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3.0,
                                  ),
                                  Text(
                                    "Patterson",
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.blueAccent,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          children: [
                            //Card Buttons
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                ),
                                height: 28.0,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 2.0,
                                ),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: const Text(
                                  "ACCEPT",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              height: 28.0,
                              padding: EdgeInsets.symmetric(
                                horizontal: 15.0,
                                vertical: 2.0,
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xffDCE5FF),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: const Text(
                                "DECLINE",
                                style: TextStyle(
                                  color: Color(0xff4D7CFF),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Appointments
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 6.0,
              ),
              child: const Text(
                "Next appointments",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xff9DA4BF),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            //Card 02
            AppointmentCard(
              image: NetworkImage(
                "https://images.pexels.com/photos/7382418/pexels-photo-7382418.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
              ),
              name: "Doroty Nelson",
              date: "09 Jan 2020, 8am-10am",
            ),
            AppointmentCard(
              image: NetworkImage(
                "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
              ),
              name: "Carl Pope",
              date: "09 Jan 2020, 11am-02pm",
            ),
            AppointmentCard(
              image: NetworkImage(
                "https://images.pexels.com/photos/2709388/pexels-photo-2709388.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
              ),
              name: "Ora Murray",
              date: "10 Jan 2020, 09am-10pm",
            ),
          ],
        ),
      ),
    );
  }
}
