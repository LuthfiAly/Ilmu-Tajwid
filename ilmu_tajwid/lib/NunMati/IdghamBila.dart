import 'package:flutter/material.dart';

class IdghamBila extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pengertian Idzhar",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: idghombila1(),
    );
  }
}

class idghombila1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengertian Idgham Bila Gunnah"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "http://3.bp.blogspot.com/-Z8GO497nlmw/W4N6CBOJz9I/AAAAAAAADvg/b5nxaMgMsRIVAL-bxp1NEGFLaxA03uMHwCK4BGAYYCw/s1600/Untitled.jpg",
              "Pengertian Idgham Bila Gunnah ialah apabila nun sukun atau tanwin menghadapi huruf (ل) dan (ر). Cara bacanya nun sukun atau tanwin dileburkan pada huruf berikutnya dan tanpa mendengung. Nun sukun diidghomkan ketika bertemu Lam dan Ro’ karena dekatnya makhroj antara Nun, Lam dan Ro’.",
              "https://4.bp.blogspot.com/-CnTyz9Z93QU/W4uc57X-Z8I/AAAAAAAALnc/9hLKLe-AqGMX7GwOgAxP9KOf4j6OJcfcQCLcBGAs/s1600/Contoh%2BIdgam%2BBilagunnah.png"),
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
          Image(
            fit: BoxFit.cover,
            image: NetworkImage(urlContoh),
            height: 300.0,
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
