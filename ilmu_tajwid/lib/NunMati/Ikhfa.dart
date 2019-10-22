import 'package:flutter/material.dart';

class Ikhfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pengertian Idzhar",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ikhfa1(),
    );
  }
}

class ikhfa1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengertian Ikhfa"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "http://3.bp.blogspot.com/-Z8GO497nlmw/W4N6CBOJz9I/AAAAAAAADvg/b5nxaMgMsRIVAL-bxp1NEGFLaxA03uMHwCK4BGAYYCw/s1600/Untitled.jpg",
              "Pengertian Ikhfa’ secara bahasa adalah menutupi. \n\nSecara istilah, ikhfa’ ialah melafalkan suatu huruf antara izhhar dan idghom dan tanpa tasydid sertai tetapnya ghunnah pada huruf yang pertama yaitu nun sukun atau tanwin. Hurufnya ada 15 yaitu (ت ث ج د ذ ز س ش ص ض ط ظ ف ق ك). Cara membacanya adalah ketika melafalkan nun sukun atau tanwin, lidah dipersiapkan untuk mengucapkan huruf berikutnya. Selain itu juga harus disertai ghunnah/dengung dan dibaca panjang. Ikhfa dibagi 3 bagian: \n\na. Ikhfa’ Aqrob artinya ikhfa’ dekat karena bunyi nun sukun dan tanwin tidak terlalu disamarkan. Hurufnya ada 3 yaitu ( ت ط د). \n\nb. Ikhfa’ Ausath artinya ikfa’ tengah-tengah sehingga nun sukun dan tanwin disamarkan tengah-tengah. Hurufnya adalah 10 yaitu (ث ج ذ ز س ش ص ض ظ ف). \n\nc. Ikhfa’ Ab’adartinya ikhfa’ jauh karena nun sukun dan tanwin disamarkan jauh. Hurufnya ada 2 yaitu (ق ك).",
              "https://4.bp.blogspot.com/-SKgsI7Ft9ck/W26tEfsoFRI/AAAAAAAALYk/IgK35ov4D08aJtfw7EDlOWPDeiJu79s6gCLcBGAs/s1600/Contoh%2BIkhfa.png"),
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
