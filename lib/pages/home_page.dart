import 'package:flutter/material.dart';
import 'package:flutter_codigo5_components/pages/avatar_page.dart';
import 'package:flutter_codigo5_components/pages/review_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'alert_page.dart';
import 'b_card_page.dart';
import 'card_page.dart';
import 'grid_page.dart';
import 'input_page.dart';
import 'list_page.dart';
import 'o_card_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.center,
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://ih1.redbubble.net/image.622748019.0162/pp,504x498-pad,600x600,f8f8f8.u1.jpg",
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.09),
                      offset: Offset(4, 4),
                      blurRadius: 12.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.poppins(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                width: 160.0,
                child: Divider(
                  thickness: 0.45,
                ),
              ),
              ItemComponentWidget(
                title: "Avatar",
                content: "Ir al detalle de Avatar",
                icon: Icons.check_circle_outline,
                color: Color(0xff4A5467),
                toPage: AvatarPage(),
              ),
              ItemComponentWidget(
                title: "Alerta",
                content: "Ir al detalle de Alerta",
                icon: Icons.check_circle_rounded,
                color: Color(0xff0096c7),
                toPage: AlertPage(),
              ),
              ItemComponentWidget(
                title: "Review",
                content: "Ir al detalle de Review",
                icon: Icons.check_circle_rounded,
                color: Color(0xff0096c7),
                toPage: ReviewPage(),
              ),
              ItemComponentWidget(
                title: "Cards",
                content: "Ir al detalle de Cards",
                icon: Icons.check_circle_rounded,
                color: Color(0xff0096c7),
                toPage: CardPage(),
              ),
              ItemComponentWidget(
                title: "Exercise One",
                content: "Ir al detalle de Exercise One",
                icon: Icons.check_circle_rounded,
                color: Color(0xff0096c7),
                toPage: OCardPage(),
              ),
              ItemComponentWidget(
                title: "Exercise Two",
                content: "Ir al detalle de Exercise Two",
                icon: Icons.check_circle_rounded,
                color: Color(0xff0096c7),
                toPage: BCardPage(),
              ),
              ItemComponentWidget(
                title: "Inputs",
                content: "Ir al detalle de Inputs",
                icon: Icons.check_circle_rounded,
                color: Color(0xff0096c7),
                toPage: InputPage(),
              ),
              ItemComponentWidget(
                title: "Listas",
                content: "Ir al detalle de Listas",
                icon: Icons.check_circle_rounded,
                color: Color(0xff0096c7),
                toPage: ListPage(),
              ),ItemComponentWidget(
                title: "Grid",
                content: "Ir al detalle de Grid",
                icon: Icons.check_circle_rounded,
                color: Color(0xff0096c7),
                toPage: GridPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  String title;
  String content;
  IconData icon;
  Color color;
  Widget toPage;

  ItemComponentWidget({
    required this.title,
    required this.content,
    required this.icon,
    required this.color,
    required this.toPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 7.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            offset: Offset(4, 4),
            blurRadius: 12.0,
          ),
        ],
      ),
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>toPage));
        },
        leading: Icon(
          this.icon,
          color: this.color,
        ),
        title: Text(
          this.title,
          style: GoogleFonts.poppins(),
        ),
        subtitle: Text(
          this.content,
          style: GoogleFonts.poppins(
            fontSize: 13.0,
          ),
        ),
        trailing: Icon(
          Icons.chevron_right,
        ),
      ),
    );
  }
}
