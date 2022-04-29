import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
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
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Check_green_icon.svg/2048px-Check_green_icon.svg.png",
                height: 60.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Alert",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.5),
                ),
              )
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Aceptar",
              ),
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
        backgroundColor: Colors.black,
        title: Text("Alert Page"),
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
                "Show Alert",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
