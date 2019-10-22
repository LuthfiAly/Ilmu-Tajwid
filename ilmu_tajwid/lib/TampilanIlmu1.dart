import 'package:flutter/material.dart';
import 'package:ilmu_tajwid/NunMati/IdghamBigun.dart';
import 'package:ilmu_tajwid/NunMati/IdghamBila.dart';
import 'package:ilmu_tajwid/NunMati/Idzhar.dart';
import 'package:ilmu_tajwid/NunMati/Ikhfa.dart';
import 'package:ilmu_tajwid/NunMati/Iqlab.dart';

class TampilanIlmu1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ilmu Tajwid",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: tampilan1(),
    );
  }
}

class tampilan1 extends StatelessWidget {
  var teksilmutajwid = TextStyle(
    fontFamily: 'arial',
    color: Colors.white,
    fontSize: 20.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hukum Nun Mati Dan Tanwin"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                openNewScreen(context, Idzhar());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZqrePPNcyYYbWney5a3SXSExuKVUW1EzbDXNu2idZV0V7Mqkv"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Idzhar",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, IdghamBigun());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXcEJgj87_qDHK0mgZ81jB5mh8S6qcVgPQ95SP9Ly8tzXyZq4nkQ"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Idgham Bi Gunnah",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, IdghamBila());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcjICAmn8lnxW4drWpZh2MU6USQmkaKwj3DaktStX0zJrRGbzHhg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Idgham Bila Gunnah",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, Iqlab());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://img.freepik.com/free-photo/texture-background_1404-99.jpg?size=626&ext=jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Iqlab",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, Ikhfa());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://img.freepik.com/free-photo/texture-background_1404-93.jpg?size=626&ext=jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Ikhfa",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            )
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
