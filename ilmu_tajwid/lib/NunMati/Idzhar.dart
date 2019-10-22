import 'package:flutter/material.dart';

class Idzhar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pengertian Idzhar",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: izhar1(),
    );
  }
}

class izhar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengertian Idzhar"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "http://3.bp.blogspot.com/-Z8GO497nlmw/W4N6CBOJz9I/AAAAAAAADvg/b5nxaMgMsRIVAL-bxp1NEGFLaxA03uMHwCK4BGAYYCw/s1600/Untitled.jpg",
              "Pengertian Idzhar secara bahasa artinya jelas atau terang. \n\nSecara istilah izhhar adalah mengeluarkan setiap huruf dari mahkrojnya tanpa gunnah pada huruf yang pertama yakni nun sukun dan tanwin. Apabila nun sukun atau tanwin bertemu huruf yang 6 yaitu (أ ه ع ح غ خ) maka dihukumi izhhar. Cara bacanya ialah nun sukun dan tanwin dibaca sesuai makhroj dan sifat aslinya. Dinamakan izhhar halqi karena semua huruf izhhar makhrojnya alhalq artinya tenggorokan.",
              "https://4.bp.blogspot.com/-ATkNwnhD98s/WBVo0YeNrGI/AAAAAAAAEV0/saFbjJSpWHQdquyv06WbFvUCvGwRyx9mwCLcB/s1600/full%2Bizhar.jpg"),
        ],
      ),
    );
  }

  Widget _createPageItemUI(String urlGambar, String pengertian, urlContoh) {
    return Container(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              fit: BoxFit.fill,
              image: NetworkImage(urlGambar),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              pengertian,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20.0),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image(
              fit: BoxFit.fill,
              image: NetworkImage(urlContoh),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
