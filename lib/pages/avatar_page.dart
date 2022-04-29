import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Avatar Page",
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.redAccent,
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              "F",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/11784925/pexels-photo-11784925.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.search,
          ),
          Icon(
            Icons.more_vert,
          ),
        ],
      ),
      body: Column(
        children: const [
          FadeInImage(
            fadeInDuration: Duration(
              milliseconds: 2000,
            ),
            placeholder: AssetImage("assets/images/loading.gif"),
            image: NetworkImage(
                "https://images.pexels.com/photos/11784925/pexels-photo-11784925.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"),
          )
        ],
      ),
    );
  }
}
