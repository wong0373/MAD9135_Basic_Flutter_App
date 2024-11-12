import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Flutter App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView(
            children: [
              SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: 3,
                  //default is vertical
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    const images = [
                      'assets/images/chiikawa_1.webp',
                      'assets/images/chiikawa_2.jpg',
                      'assets/images/chiikawa_3.jpg'
                    ];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Image.asset(images[index],
                          width: 300, height: 300, fit: BoxFit.fill),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const ListTile(
                leading: Icon(Icons.looks_one, size: 50),
                title: Text(
                  'ListTile with Montserrat Regular Font',
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.looks_two_rounded, size: 50),
                title: Text(
                  'ListTile with Montserrat Bold Font',
                  style: TextStyle(
                      fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                ),
              ),
              // Space between elements
              const ListTile(
                leading: Icon(Icons.looks_3_sharp, size: 50),
                title: Text('ListTile with SourGummy Bold Font',
                    style: TextStyle(
                        fontFamily: 'SourGummy', fontWeight: FontWeight.bold)),
              ),

              const ListTile(
                leading: Icon(Icons.looks_4_outlined, size: 50),
                title: Text('ListTile with Doto Regular Font',
                    style: TextStyle(fontFamily: 'Doto')),
              ),

              const ListTile(
                trailing:
                    CircleAvatar(child: Icon(Icons.looks_5_rounded, size: 30)),
                title: Text('Default Device Roboto Font'),
              ),
              const ListTile(
                trailing:
                    CircleAvatar(child: Icon(Icons.looks_6_sharp, size: 30)),
                title: Text('Default Device Roboto Bold Font',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                  trailing: CircleAvatar(child: Icon(Icons.ac_unit, size: 30)),
                  title: Text('Bold Italic Snowflake',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold))),
              const SizedBox(height: 24), // Space between elements
              SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: 3,
                  //default is vertical
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    const images = [
                      'https://treehole.hk/wp-content/uploads/image-19-1024x497.png',
                      'https://img2.tapimg.net/post/images/FoyRSF11QkhEWu13WcMjuk9DspFA.jpeg?imageMogr2/thumbnail/720x9999%3E/quality/80/format/jpg/interlace/1/ignore-error/1',
                      'https://i0.wp.com/yumetwinsblog.wpcomstaging.com/wp-content/uploads/2024/10/chiikawa-1.webp?resize=620%2C434&ssl=1'
                    ];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Image.network(images[index],
                          width: 300, height: 300, fit: BoxFit.fill),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
