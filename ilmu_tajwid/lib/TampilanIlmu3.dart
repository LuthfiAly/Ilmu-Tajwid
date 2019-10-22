import 'package:flutter/material.dart';

import 'LamAlif/Qomariyah.dart';
import 'LamAlif/Syamsiyah.dart';

class TampilanIlmu3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lam Alif",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IlmuTajwid3(),
    );
  }
}

class IlmuTajwid3 extends StatelessWidget {
  var teksilmutajwid = TextStyle(
    fontFamily: 'arial',
    color: Colors.white,
    fontSize: 20.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lam Alif"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                openNewScreen(context, Qomariyah());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://static.vecteezy.com/system/resources/previews/000/123/262/non_2x/white-vector-wood-background.jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Qomariyah",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, Syamsiyah());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://backgrounddownload.com/wp-content/uploads/2018/09/background-kayu-warna-coklat-300x200.jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Syamsiyah",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget backgroundImage(String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.luminosity),
            image: NetworkImage(imageUrl)),
      ),
    );
  }

  void openNewScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
