import 'package:flutter/material.dart';

class Iqlab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pengertian Idzhar",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: iqlab1(),
    );
  }
}

class iqlab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengertian Iqlab"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "http://3.bp.blogspot.com/-Z8GO497nlmw/W4N6CBOJz9I/AAAAAAAADvg/b5nxaMgMsRIVAL-bxp1NEGFLaxA03uMHwCK4BGAYYCw/s1600/Untitled.jpg",
              "Pengertian Iqlab secara bahasa ialah memindahkan sesuatu dari bentuknya. \n\nIqlab secara istilah adalah menjadikan satu huruf di tempat huruf yang lain serta menjaga ghunnah dan ikhfa di huruf yang pertama yakni nun sukun atau tanwin yang digantikan oleh mim. Huruf iqlab hanya satu yaitu (ب). Apabila nun sukun atau tanwin mengahadapi ba’ maka bunyi “n” digantikan jadi “m” dan disertai dengan dan panjang.",
              "https://2.bp.blogspot.com/-kMr6uZsbyVI/Wgml1Z41xVI/AAAAAAAAANs/nCP6BVXoQcsfIMaZSijgilC9woGu2P-dgCLcBGAs/s1600/contoh%2Bbacaan%2Biqlab.jpg"),
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
