import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'Pura Mangkunegaran';
  final String location = 'Kota Surakarta(SOLO), Jawa Tengah';
  final String description =
      'Berada tidak jauh dari Keraton Surakarta, Pura Mangkunegaran menjadi tempat wisata Solo yang wajib dikunjungi. Tempat bersejarah yang dibangun pada tahun 1757 ini juga merupakan tempat tinggal dari para Adipati Mangkunegaran. Selain desain arsitekturnya yang indah, kamu juga bisa menemukan sejumlah koleksi peninggalan bersejarah dari Kerajaan Majapahit dan Mataram di tempat wisata ini. Jangan lewatkan juga pertunjukan gamelan yang sering digelar setiap Rabu di Pura Mangkunegaran ini.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Sejarah'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('images/mangkunegaran.jpg',
              height: 250, width: 412, fit: BoxFit.fill),
          Container(
            height: 15,
          ),
          Row(
            children: [
              Container(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    this.location,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              Container(
                width: 100,
              ),
              Icon(
                Icons.star,
                size: 30,
                color: Colors.orange,
              ),
              Text(
                '4',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              this.description,
              style: TextStyle(fontSize: 18),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
