import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoved = false; // Variabel untuk mengontrol ikon hati
  String buttonPressed =
      "Button sudah ditekan"; // Pesan yang muncul saat tombol ditekan

  // Fungsi untuk mengubah status ikon hati
  void toggleLove() {
    setState(() {
      isLoved = !isLoved;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Ganti warna latar belakang AppBar
        title: Text(
          "Mission 1", // Ganti judul aplikasi
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.lightBlue, // Ganti warna gradien
              Colors.white, // Ganti warna gradien
            ],
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      'images/tunjungan.jpg', // Ganti gambar lanskap
                      fit: BoxFit
                          .cover, // Menggunakan BoxFit.cover untuk mengisi seluruh kotak
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 10,
                    width: 50.0,
                    height: 50.0,
                    child: GestureDetector(
                      onTap: toggleLove,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite,
                            color: isLoved ? Colors.red : Colors.grey,
                            size: 25.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image.asset(
                            'images/tunjungan1.jpg', // Ganti gambar lanskap
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image.asset(
                            'images/tunjungan2.jpg', // Ganti gambar lanskap
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image.asset(
                            'images/tunjungan3.jpg', // Ganti gambar lanskap
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image.asset(
                            'images/tunjungan4.jpeg', // Ganti gambar lanskap
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 4,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      "Tunjungan Road",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      child: ListView(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                            child: Text(
                              "Lorem ipsum dolor sit amet. Est necessitatibus sunt ab galisum numquam eum animi officiis qui molestiae consequatur et eveniet voluptas. Aut provident molestiae sed quae repellat ut autem harum id aliquam odit sit quis molestiae. Sed adipisci voluptatem aut iusto atque sed quod voluptas ab corporis atque sed corrupti recusandae et explicabo recusandae sed obcaecati consequatur. Est dolores assumenda sit temporibus rerum vel voluptates quia et molestiae alias ex fuga quia. Ab corrupti tempore vel laudantium omnis ea omnis magni. Ex illum placeat quo Quis similique nam Quis cupiditate! Sed esse tenetur sit explicabo doloribus et commodi ducimus et sunt ullam sed fugit dolorem aut vitae pariatur qui minima illum. Rem provident voluptatem in harum iure sit exercitationem corrupti ut veritatis repellendus et ipsam quae sed nemo incidunt. Sit earum repudiandae sed rerum commodi aut expedita minus ut quos libero eos sint nostrum sed suscipit quis cum doloremque voluptatibus.",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
