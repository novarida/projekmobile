import 'package:flutter/material.dart';
import 'package:projekweb/banten.dart';
import 'package:projekweb/jakarta.dart';
import 'package:projekweb/jawabarat.dart';
import 'package:projekweb/jawatengah.dart';
import 'package:projekweb/jawatimur.dart';
import 'package:projekweb/jogja.dart';

class wisata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepPurple[300],
        title: Text(
          "Journey Categories",
          style: TextStyle(
            fontSize: 23,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: 800,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.deepPurple[50],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            CustomCard(
              title: "DKI Jakarta",
              image: "https://www.goodnewsfromindonesia.id/wp-content/uploads/images/source/rizkadevam/20190612patung-selamat-datang.jpg",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => jakarta(),
                ));
              },
            ),
            CustomCard(
              title: "DI Yogyakarta",
              image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcPLVfoGjYZYfPR4xXb-1EGqEarDYZFb-llhnKpLaXDVR5b_Ojz2QiKJUeviE-m6zghgo&usqp=CAU",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => jogja(),
                ));
              },
            ),
            CustomCard(
              title: "Banten",
              image: "https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2022/05/13/2684850022.jpg",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => banten(),
                ));
              },
            ),
            CustomCard(
              title: "Jawa Barat",
              image: "https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2022/12/27/4285404014.jpeg",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => jawabarat(),
                ));
              },
            ),
            CustomCard(
              title: "Jawa Tengah",
              image: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Tugu_Perbatasan_Jawa_Tengah_-_Jawa_Barat_di_Patimuan.jpg/640px-Tugu_Perbatasan_Jawa_Tengah_-_Jawa_Barat_di_Patimuan.jpg",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => jawatengah(),
                ));
              },
            ),
            CustomCard(
              title: "Jawa Timur",
              image: "https://asset.kompas.com/crops/Og065yrp4hpn8KLJb27uUpmVmmM=/56x127:1147x854/750x500/data/photo/2019/04/22/820065519.jpg",
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => jawatimur(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.title,
    required this.image,
    required this.onTap,
  });

  final String title;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        child: Card(
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 170,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Text(title),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
