import 'package:flutter/material.dart';

class IdghamBigun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pengertian Idzhar",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: idghom1(),
    );
  }
}

class idghom1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengertian Idgham Bi Gunnah"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "http://3.bp.blogspot.com/-Z8GO497nlmw/W4N6CBOJz9I/AAAAAAAADvg/b5nxaMgMsRIVAL-bxp1NEGFLaxA03uMHwCK4BGAYYCw/s1600/Untitled.jpg",
              "Pengertian Idghom secara bahasa adalah memasukkan. \n\nIdghom secara istilah adalah memasukkan huruf sukun pada huruf yang berharokat, seakan-akan melafalkan satu huruf yang bertasydid dan cukup mengangkat lisan satu kali. Nun sukun atau tanwin dihukumi idghom bighunnah apabila menghadapi huruf (ي ن م و) dikumpulkan pada kata (يَنْمُوْ). Cara baca nun mati dan tanwin dileburkan kepada huruf idghom bigunnah serta dibaca dengung dan panjang. Selain itu, syarat idhghom harus berbeda kata/kalimah antara Nun mati dan huruf idghomnya.",
              "http://2.bp.blogspot.com/-FCmOiwhkS_s/UDxYTrOg2GI/AAAAAAAAAIA/wFXfyHfBpmM/s1600/contoh+maal+ghunnah.jpg"),
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
