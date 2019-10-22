import 'package:flutter/material.dart';
import 'package:ilmu_tajwid/MimMati/IdghamMimi.dart';
import 'package:ilmu_tajwid/MimMati/IkhfaSyafawi.dart';

import 'MimMati/IdzharSyafawi.dart';

class TampilanIlmu2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ilmu Tajwid",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IlmuTajwid2(),
    );
  }
}

class IlmuTajwid2 extends StatelessWidget {
  var teksilmutajwid = TextStyle(
    fontFamily: 'arial',
    color: Colors.white,
    fontSize: 20.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hukum Mim Mati Dan Tanwin"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                openNewScreen(context, IdzharSyafawi());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5WxTHc6_3bABsoibtKznxrQta_1wS0OhfvOgiFDORcrfMHk1j"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Idzhar Syafawi",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, IdghamMimi());
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
                        "Idgham Mimi",
                        style: teksilmutajwid,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, IkhfaSyafawi());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://www.backgrounddownload.com/wp-content/uploads/2018/09/background-kayu-elegant-2-300x200.jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Ikhfa Syafawi",
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
