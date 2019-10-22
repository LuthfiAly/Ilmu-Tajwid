import 'package:flutter/material.dart';

class IdghamMimi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pengertian Idzhar",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: mim1(),
    );
  }
}

class mim1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengertian Idgham Mimi"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "https://3.bp.blogspot.com/-qITNE2yrw0Y/WAqactWTNYI/AAAAAAAADic/iokBKToka4EUVVn8LJJqjKVUGwdtaQiwACLcB/s1600/Bagan%2Bcontoh%2Bhukum%2Bbacaan%2Bmim%2Bmati.png",
              "Pengertian Idgham Mimi secara bahasa Idgham berari memasukkan, sedangkan mimi berarti sebangsa huruf mim. \n\nSecara istilah Idgham mimi adalah apabila ada mim mati bertemu dengan huruf mim.",
              "https://id-static.z-dn.net/files/d80/3fe81678d55230bdb6fdb1dd11f0fd92.png"),
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
              height: 250.0,
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
