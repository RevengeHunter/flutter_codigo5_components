import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Card Page",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //Card 01
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 14.0,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 14.0,
              vertical: 10.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(
              //     20.0,
              //   ),
              //   topRight: Radius.circular(
              //     20.0,
              //   ),
              // ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.07),
                  blurRadius: 1,
                  offset: const Offset(4, 4),
                ),
                const BoxShadow(
                  color: Colors.white,
                  blurRadius: 5,
                  offset: Offset(-5, -5),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  maxLines: 4,
                  // overflow: TextOverflow.fade,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black.withOpacity(
                      0.6,
                    ),
                    fontSize: 14.0,
                    height: 1.3,
                    decoration: TextDecoration.none,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  margin: const EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 6.0,
                  ),
                  width: double.infinity,
                  //height: 50.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightBlueAccent.withOpacity(0.4),
                        blurRadius: 12,
                        offset: const Offset(4, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    "Follow me",
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
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
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 12.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.07),
                  offset: const Offset(4, 4),
                  blurRadius: 12.0,
                ),
              ],
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/item1.png',
                  height: 120,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Fiorella Guadalupe de las Nieves Azules",
                        style: GoogleFonts.montserrat(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,",
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.montserrat(
                          color: Colors.black.withOpacity(0.60),
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          //Card 03
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 12.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 12,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                // Container(
                //   height: 130.0,
                //   width: 130.0,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(12.0),
                //     image: DecorationImage(
                //       image: NetworkImage("https://images.pexels.com/photos/726282/pexels-photo-726282.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",),
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    "https://images.pexels.com/photos/726282/pexels-photo-726282.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                    width: 130.0,
                    height: 130.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                const Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum",
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
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
