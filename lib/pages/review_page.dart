import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewPage extends StatelessWidget {
  void showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext federico) {
        return AlertDialog(
          //title: Text("My alert dialog",),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: Colors.white,
          elevation: 4,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Caregiver Review",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Color(0xff658BC9),
                ),
              ),
              const Divider(
                indent: 20.0,
                endIndent: 20.0,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://static2.elnortedecastilla.es/www/pre2017/multimedia/noticias/201501/12/media/cortadas/facebook-profile-picture-no-pic-avatar--575x323.jpg"),
                radius: 35.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Amanda Johson",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff53658C),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Rate the care provided Sunday, Jan 9",
                style: GoogleFonts.poppins(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff53658C),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffDFE4ED),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 10,
                ),
                height: 60.0,
                color: Color(0xffF7F9FC),
                width: double.infinity,
                child: Text(
                  "Aditional Comments...",
                  style: GoogleFonts.poppins(
                    color: Color(0xff949FB9),
                    fontSize: 11.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Not Now",
                    style: GoogleFonts.poppins(
                      color: Color(0xff5F7CAF),
                      fontWeight: FontWeight.w600,
                      fontSize: 13.0,
                    ),
                  ),
                ),
                MaterialButton(
                  color: Color(0xff6F8FC5),
                  child: Text(
                    "Submit Review",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 13.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Review Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: Text(
                "Show Review",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
