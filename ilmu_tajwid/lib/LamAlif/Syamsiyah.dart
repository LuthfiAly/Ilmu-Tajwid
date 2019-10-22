import 'package:flutter/material.dart';

class Syamsiyah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pengertian Alif Lam Qomariyah",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Syamsy1(),
    );
  }
}

class Syamsy1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengertian Alif Lam Syamsiyah"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "https://2.bp.blogspot.com/-oHHSsI5OkOU/V_7YRZSKL6I/AAAAAAAADeU/5DUd6-B_VzgXEr4rpFC4F5BgT03Xzqg4QCLcB/s1600/bagan%2B%2Bhuruf%2Bdan%2Bcontoh%2Balif%2Blam%2Bqomariyah%2Bdan%2Balif%2Blam%2Bsyamsiah.png",
              "Alif lam syamsiah adalah alif lam sukun yang bertemu dengan salah satu  huruf syamsiah dan dibacanya lebur/idgam. Jumlah huruf syamsiah ada 14.",
              "https://3.bp.blogspot.com/-X320aAOTOEU/V_8n4GskkAI/AAAAAAAADfY/Ol7hvh6QsxUPxShIJgh35pfHyWTSMUHtwCLcB/s1600/Tabel%2BContoh%2Bcara%2Bmembaca%2Balif%2Blam%2Bsyamsiah.png"),
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
        ],
      ),
    );
  }
}
