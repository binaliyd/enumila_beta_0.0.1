import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bilgi Kutucukları Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.green, // App bar rengi
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TGADS 7 Harikalar'),
      ),
      body: Container(
        color: Colors.grey[200], // Arka plan rengi
        child: Column(
          children: [
            InfoCard(
              title: 'Mısır Piramitleri',
              image: 'assets/image1.jpg',
              description: 'Mısır piramitleri, antik Mısır ın ünlü yapılarıdır. Firavunların mezarları olarak kullanılmışlardır. En ünlüleri Gize deki Keops, Kefren ve Mikerinos piramitleridir. Mısır piramitleri, dünyanın en eski ve en büyük taş yapılarındandır. Piramitler, Eski Krallık döneminde inşa edilmiştir. Piramitlerin inşası uzun bir süreçtir ve binlerce işçi ve uzman gerektirmiştir. Keops Piramidi, dünyanın Yedi Harikası ndan biridir. Piramitler, karmaşık mühendislik teknikleri kullanılarak yapılmıştır. Piramitler, antik Mısır kültürünü ve inançlarını yansıtmaktadır. Günümüzde hala tarihi ve kültürel öneme sahiptirler.',
            ),
            InfoCard(
              title: 'Dünya Harikası 2',
              image: 'assets/image2.jpg',
              description: 'Dünya Harikası 2 açıklama',
            ),
            // Diğer bilgi kutucuklarını buraya ekleyin
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatefulWidget {
  final String title;
  final String image;
  final String description;

  const InfoCard({required this.title, required this.image, required this.description});

  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
        });
      },
      child: Card(
        margin: EdgeInsets.all(16),
        elevation: 4,
        child: Column(
          children: [
            Image.asset(
              widget.image,
              fit: BoxFit.cover,
              height: isOpen ? 200 : 120,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.title,
                style: TextStyle(
                  fontSize: isOpen ? 24 : 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial', // Yazı fontu
                ),
              ),
            ),
            if (isOpen)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.description,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
