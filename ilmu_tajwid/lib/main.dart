import 'package:flutter/material.dart';
import 'package:ilmu_tajwid/Profile.dart';
import 'TampilanIlmu1.dart';
import 'TampilanIlmu2.dart';
import 'TampilanIlmu3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: Colors.white,
          )),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var teksilmutajwid = TextStyle(
      fontFamily: 'arial',
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            color: Colors.black,
            onPressed: () {
              openNewScreen(context, Profile());
            },
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              "Kumpulan",
              style: TextStyle(fontSize: 40.0),
            ),
            Text(
              "Ilmu Tajwid",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, TampilanIlmu1());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://cdn.pixabay.com/photo/2015/10/31/00/43/background-texture-1014963__340.jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Hukum Nun Mati Dan Tanwin",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, TampilanIlmu2());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://4.bp.blogspot.com/-9__o2x_tYpU/VgTpdPNUN9I/AAAAAAAABmI/gOF_DHYEDS8/s1600/back%2Bpapan%2Bgelap.jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Hukum Mim Mati Dan Tanwin",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, TampilanIlmu3());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://img.freepik.com/free-photo/wood-material-background-wallpaper-texture-concept_53876-42925.jpg?size=626&ext=jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Hukum Lam Alif",
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
