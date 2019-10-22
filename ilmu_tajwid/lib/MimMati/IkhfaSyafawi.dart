import 'package:flutter/material.dart';

class IkhfaSyafawi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pengertian Idzhar",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ikhfasyafawi1(),
    );
  }
}

class ikhfasyafawi1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengertian Ikhfa Syafawi"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "https://3.bp.blogspot.com/-qITNE2yrw0Y/WAqactWTNYI/AAAAAAAADic/iokBKToka4EUVVn8LJJqjKVUGwdtaQiwACLcB/s1600/Bagan%2Bcontoh%2Bhukum%2Bbacaan%2Bmim%2Bmati.png",
              "Pengertian Ikhfa Syafawi secara bahasa Ikhfa’ berarti samar, sedangkan syafawi berarti sebangsa bibir. Dikatakan syafawi karena mahraj (tempat keluar) dari huruf mim dan huruf ikhfa’ syafawi adalah pertemuan antara bibir bawah dan bibir atas. \n\nSecara istilah Ikhfa’ Syafawi adalah apabila ada mim mati bertemu dengan huruf ba’.",
              "https://1.bp.blogspot.com/-wl9it4Znx20/WpC7kfjFrfI/AAAAAAAADgg/5l1X9EiMd2wITle0A2aAOjMEx-1guYvjwCLcBGAs/s1600/hukum.png"),
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
              fit: BoxFit.cover,
              image: NetworkImage(urlContoh),
              height: 200.0,
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
