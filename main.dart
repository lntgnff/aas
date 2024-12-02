import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Moon Cake Mas Amba'),
        ),
        body: Row(
          children: [
            // Bagian Teks di Kiri
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Judul
                    Text(
                      'Membuat Moon Cake Ala Mas Amba',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),

                    // Informasi Deskripsi
                    Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Moon Cake',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'kue manis tradisional Tionghoa yang biasanya disajikan pada Festival Musim Gugur atau Mid-Autumn Festival',
                          ),
                          SizedBox(height: 16),
                          
                          // Rating dan Ulasan
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              Icon(Icons.star, color: Colors.yellow),
                              SizedBox(width: 8),
                              Text('170 Reviews'),
                            ],
                          ),
                          SizedBox(height: 16),

                          // Informasi Prep, Cook, dan Feeds
                          Row(
                            children: [
                              // Bagian Prep
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  children: [
                                    Icon(Icons.kitchen, color: Colors.black),
                                    SizedBox(height: 8),
                                    Text('PREP:'),
                                    Text('25 min'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 16),

                              // Bagian Cook
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  children: [
                                    Icon(Icons.timer, color: Colors.black),
                                    SizedBox(height: 8),
                                    Text('COOK:'),
                                    Text('1 hr'),
                                  ],
                                ),
                              ),
                              SizedBox(width: 16),

                              // Bagian Feeds
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  children: [
                                    Icon(Icons.restaurant, color: Colors.black),
                                    SizedBox(height: 8),
                                    Text('FEEDS:'),
                                    Text('4-6'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Bagian Gambar di Kanan
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'kuebulan.jpg', // Path gambar di assets
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
