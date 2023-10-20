// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projekweb/banten.dart';
import 'package:projekweb/detail_page.dart';
import 'package:projekweb/jakarta.dart';
import 'package:projekweb/jawabarat.dart';
import 'package:projekweb/jawatengah.dart';
import 'package:projekweb/jawatimur.dart';
import 'package:projekweb/jogja.dart';

class homepage extends StatefulWidget {

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool isDark = false;
  Widget _journeyCategory({
    required Color color, 
    required String tittle, 
    required String subtittle,
    required VoidCallback onTap,
    required String imagePath,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        padding: EdgeInsets.only(left: 20),
        height: 120,
        width: 240,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tittle, style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  subtittle, style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(imagePath),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _journeyCard({
    required String imageAsset,
    // required String imageURL, 
    required String title, 
    required String subtitle,
  }) {
    bool isFavorite = false;
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
          //   decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: NetworkImage(imageURL),
          //     fit: BoxFit.cover,
          //   ),
          //   borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(15.0),
          //     bottomLeft: Radius.circular(15.0),
          //   ),
          // ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageAsset), // Gambar Anda
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0),
            ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 5),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:6, vertical: 5),
                    child: Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: Container(
              padding: EdgeInsets.all(15),
              child: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : null,
              ),
            ),
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SearchAnchor(
          builder: (BuildContext context, SearchController controller) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: SearchBar(
                    controller: controller,
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    onTap: () {
                      controller.openView();
                    },
                    onChanged: (_) {
                      controller.openView();
                    },
                    leading: const Icon(Icons.search),
                    trailing: <Widget>[
                      Tooltip(
                        message: 'Change brightness mode',
                        child: IconButton(
                          isSelected: isDark,
                          onPressed: () {
                            setState(() {
                              isDark = !isDark;
                            });
                          },
                          icon: const Icon(Icons.wb_sunny_outlined),
                          selectedIcon: const Icon(Icons.brightness_2_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 800,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[50],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          child: const Text(
                            "Journey Categories",
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: Row(
                              children: [
                                _journeyCategory(
                                  color: const Color.fromARGB(255, 136, 99, 201),
                                  subtittle: "Pulau Jawa",
                                  tittle: "DKI Jakarta",
                                  imagePath: "https://www.goodnewsfromindonesia.id/wp-content/uploads/images/source/rizkadevam/20190612patung-selamat-datang.jpg",
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => jakarta(),
                                      )
                                    );
                                  },
                                ),
                                _journeyCategory(
                                  color: const Color.fromARGB(255, 136, 99, 201),
                                  subtittle: "Pulau Jawa",
                                  tittle: "DI Yogyakarta",
                                  imagePath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcPLVfoGjYZYfPR4xXb-1EGqEarDYZFb-llhnKpLaXDVR5b_Ojz2QiKJUeviE-m6zghgo&usqp=CAU",
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => jogja(),
                                      )
                                    );
                                  },
                                ),
                                _journeyCategory(
                                  color: const Color.fromARGB(255, 136, 99, 201),
                                  subtittle: "Pulau Jawa",
                                  tittle: "Banten",
                                  imagePath: "https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2022/05/13/2684850022.jpg",
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => banten(),
                                      )
                                    );
                                  },
                                ),
                                _journeyCategory(
                                  color: const Color.fromARGB(255, 136, 99, 201),
                                  subtittle: "Pulau Jawa",
                                  tittle: "Jawa Barat",
                                  imagePath: "https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2022/12/27/4285404014.jpeg",
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => jawabarat(),
                                      )
                                    );
                                  },
                                ),
                                _journeyCategory(
                                  color: const Color.fromARGB(255, 136, 99, 201),
                                  subtittle: "Pulau Jawa",
                                  tittle: "Jawa Tengah",
                                  imagePath: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Tugu_Perbatasan_Jawa_Tengah_-_Jawa_Barat_di_Patimuan.jpg/640px-Tugu_Perbatasan_Jawa_Tengah_-_Jawa_Barat_di_Patimuan.jpg",
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => jawatengah(),
                                      )
                                    );
                                  },
                                ),
                                _journeyCategory(
                                  color: const Color.fromARGB(255, 136, 99, 201),
                                  subtittle: "Pulau Jawa",
                                  tittle: "Jawa Timur",
                                  imagePath: "https://asset.kompas.com/crops/Og065yrp4hpn8KLJb27uUpmVmmM=/56x127:1147x854/750x500/data/photo/2019/04/22/820065519.jpg",
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => jawatimur(),
                                      )
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'All Journey Articles',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail_page(
                                        category: 'JAKARTA UTARA',
                                        title: 'Sea World',
                                        judul: 'Sea World',
                                        description: 'Sea World merupakan sebuah kawasan yang lengkap untuk memberikan hiburan dan pendidikan khususnya dunia laut. Dalam operasionalnya, Sea World mengemban 3 misi besar diantaranya ada pendidikan, konservasi dan hiburan. Melalui misi ini Sea World menempatkan diri sebagai tempat hiburan berkualitas. Dalam usaha memperkenalkan kehidupan biota yang hidup di alam, Sea World memiliki sekitar 7.300 ekor biota air tawar yang terdiri dari 48 Jenis ikan, 1 jenis reptil sampai biota perairan laut yang terdiri dari 11.500 ekor biota yang terdiri dari 138 jenis ikan dan avertebrata serta 3 jenis reptil. Biota-biota tersebut ditampilkan dalam 28 display yang terbagi atas 9 akuarium perairan tawar dan 19 akuarium serta 4 kolam terbuka. Setiap tampilan akuarium atau wahana memiliki tema khusus untuk memberikan nuansa tersendiri dalam pesan yang disampaikannya, selain itu untuk menambah pengetahuan mengenai biota yang ditampilkan maka dilengkapi juga dengan label berisi informasi mengenai biota baik secara biologis maupun keunikannya. Berbagai macam acara dan fasilitas penunjang lainnyapun kami hadirkan untuk kenyamanan dan kepuasan pengunjung seperti aksi seru 2 penyelam saat Feeding show di akuarium utama, uniknya duyung menyantap rumput laut dari tangan penyelam sampai keganasan belut kerondong berebut makanannya. Bagi mereka yang ingin berinteraksi dengan biota laut terdapat juga Kolam Sentuh dan mereka ingin bertemu hewan laut dalam maka fasilitas museum yang berisi awetan hewan-hewan laut dalam menunggu disana, seperti Ikan Purba – Raja Laut (Coelacanth). Sea World senantiasa akan menghadirkan edukasi terkini mengenai dunia air pada umumnya dan kelautan khususnya dengan berbagai biota yang dihadirkan maupun inovasi dalam tampilannya sehingga menjadi yang terdepan di Indonesia.',
                                        history: 'SeaWorld adalah taman hiburan kelautan dan akuatik terkenal yang pertama kali dibuka pada tahun 1964 di San Diego, California, oleh tiga pendiri yang ingin memberikan pengalaman luar biasa kepada pengunjung tentang kehidupan laut. Dengan visi ini, SeaWorld menjadi salah satu destinasi populer yang memadukan hiburan, pendidikan, dan konservasi laut. Taman ini dikenal karena pertunjukan lumba-lumba yang ikonik, parade, atraksi, dan wahana air yang menyenangkan yang mengajak pengunjung untuk lebih memahami dan menghargai kehidupan laut serta ekosistemnya. Seiring waktu, SeaWorld telah berkembang menjadi jaringan taman hiburan dengan lokasi di berbagai kota di Amerika Serikat, dan selalu berkomitmen untuk melestarikan keanekaragaman hayati laut sambil memberikan hiburan yang mendidik dan mengesankan. Namun, perlu dicatat bahwa dalam beberapa tahun terakhir, SeaWorld telah mengalami perubahan signifikan dalam pendekatannya terhadap atraksi dengan lumba-lumba dan paus orca akibat tekanan kelompok-kelompok hak-hak hewan dan perubahan dalam pandangan masyarakat tentang penangkapan dan pemeliharaan mamalia laut. Taman ini telah mengumumkan penghentian program penangkapan lumba-lumba liar dan perubahan dalam pertunjukan mereka untuk lebih menekankan konservasi laut. SeaWorld terus menghadapi tantangan dan berusaha mencari keseimbangan antara hiburan dan perhatian terhadap perlindungan lingkungan laut, menjadikannya destinasi yang menarik untuk merenungkan peran manusia dalam menjaga kehidupan laut di seluruh dunia.',
                                        gambarAssets: 'assets/images/sea world.png',
                                      ),
                                    ),
                                  );
                                },
                                child: _journeyCard(
                                  imageAsset: 'assets/images/sea world.png',
                                  title: 'Sea World',
                                  subtitle: 'Jakarta Utara',
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail_page(
                                        category: 'JAKARTA TIMUR',
                                        title: 'Taman Mini Indonesia Indah',
                                        judul: 'Taman Mini Indonesia Indah',
                                        description: 'Taman Mini Indonesia Indah atau yang biasa yang disebut juga TMII merupakan suatu taman hiburan bertemakan kebudayaan Indonesia di Jakarta Timur, DKI Jakarta yang memiliki area seluas kurang lebih 150 hektare[1] atau 1,5 kilometer persegi. Taman ini merupakan rangkuman kebudayaan bangsa Indonesia, yang mencakup berbagai aspek kehidupan sehari-hari masyarakat 26 provinsi Indonesia (pada tahun 1975) yang ditampilkan dalam anjungan daerah berarsitektur tradisional, serta menampilkan aneka busana, tarian, dan tradisi daerah. Di samping itu, di tengah-tengah TMII terdapat sebuah danau yang menggambarkan miniatur kepulauan Indonesia di tengahnya yang juga menjadi tempat pertunjukkan multimedia show bernama Tirta Cerita, kereta gantung, berbagai museum, dan Teater IMAX Keong Mas dan Teater Tanah Airku, berbagai sarana rekreasi ini menjadikan TMII sebagai salah satu kawasan wisata terkemuka di Jakarta. Di TMII juga terdapat sepuluh macam taman yang menunjukkan keindahan flora dan fauna Indonesia. Sepuluh taman tersebut adalah Taman Anggrek, Taman Apotek Hidup, Taman Kaktus, Taman Melati, Taman Bunga Keong Mas (kini menjadi Taman Legenda Keong Mas), Dunia Air Tawar dan Serangga, Taman Bekisar, Taman Burung, Taman Ria Atmaja Park, dan Taman Budaya Tionghoa Indonesia.',
                                        history: 'Museum Angkut, yang terletak di Kota Batu, Indonesia, adalah destinasi wisata unik yang menghadirkan perjalanan sejarah transportasi di Indonesia dan dunia. Dibuka pada tahun 2014, museum ini memiliki lebih dari 300 koleksi kendaraan, termasuk mobil klasik, sepeda, pesawat terbang, kereta api, dan banyak lagi. Pengunjung dapat mengeksplorasi area seluas 3,5 hektar yang didesain seperti sebuah kota lama dengan beragam pameran yang menampilkan evolusi transportasi dari zaman dahulu hingga masa kini. Museum Angkut tidak hanya menjadi destinasi edukasi yang menarik, tetapi juga menyediakan berbagai wahana seru, seperti "Jurassic Park" yang menampilkan replika dinosaurus, serta wahana gantung dengan pemandangan menakjubkan ke Kota Batu. Museum Angkut telah menjadi salah satu destinasi wisata terkemuka di Jawa Timur dan memberikan pengalaman yang mendidik dan menghibur bagi pengunjung dari segala usia.',
                                        gambarAssets: 'assets/images/tmii.png',
                                      ),
                                    ),
                                  );
                                },
                                child: _journeyCard(
                                  imageAsset: 'assets/images/tmii.png',
                                  title: 'Taman Mini Indonesia Indah',
                                  subtitle: 'Jakarta Timur',
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail_page(
                                        category: 'JAKARTA PUSAT',
                                        title: 'Monumen Nasional',
                                        judul: 'Monumen Nasional',
                                        description: 'Monumen Nasional atau yang disingkat dengan Monas atau Tugu Monas adalah monumen peringatan setinggi 132 meter (433 kaki) yang terletak tepat di tengah Lapangan Medan Merdeka, Jakarta Pusat. Monas didirikan untuk mengenang perlawanan dan perjuangan rakyat Indonesia dalam merebut kemerdekaan dari pemerintahan kolonial Kekaisaran Belanda. Pembangunan dimulai pada 17 Agustus 1961 di bawah perintah presiden Soekarno dan diresmikan hingga dibuka untuk umum pada 12 Juli 1975 oleh Presiden Soeharto. Tugu ini dimahkotai lidah api yang dilapisi lembaran emas yang melambangkan semangat perjuangan yang menyala-nyala dari rakyat Indonesia. Tugu monas dan museum buka setiap hari mulai pukul 06:00 hingga 16:00 WIB (UTC+7) sepanjang minggu kecuali hari Senin saat tugu tutup. Pada tiap sudut halaman luar yang mengelilingi monumen terdapat relief yang menggambarkan sejarah Indonesia. Relief ini bermula di sudut timur laut dengan mengabadikan kejayaan Nusantara pada masa lampau; menampilkan sejarah Singhasari dan Majapahit. Relief ini berlanjut secara kronologis searah jarum jam menuju sudut tenggara, barat daya, dan barat laut.',
                                        history: 'Museum Angkut, yang terletak di Kota Batu, Indonesia, adalah destinasi wisata unik yang menghadirkan perjalanan sejarah transportasi di Indonesia dan dunia. Dibuka pada tahun 2014, museum ini memiliki lebih dari 300 koleksi kendaraan, termasuk mobil klasik, sepeda, pesawat terbang, kereta api, dan banyak lagi. Pengunjung dapat mengeksplorasi area seluas 3,5 hektar yang didesain seperti sebuah kota lama dengan beragam pameran yang menampilkan evolusi transportasi dari zaman dahulu hingga masa kini. Museum Angkut tidak hanya menjadi destinasi edukasi yang menarik, tetapi juga menyediakan berbagai wahana seru, seperti "Jurassic Park" yang menampilkan replika dinosaurus, serta wahana gantung dengan pemandangan menakjubkan ke Kota Batu. Museum Angkut telah menjadi salah satu destinasi wisata terkemuka di Jawa Timur dan memberikan pengalaman yang mendidik dan menghibur bagi pengunjung dari segala usia.',
                                        gambarAssets: 'assets/images/monumen nasional.png',
                                      ),
                                    ),
                                  );
                                },
                                child: _journeyCard(
                                  imageAsset: 'assets/images/monumen nasional.png',
                                  title: 'Monumen Nasional',
                                  subtitle: 'Jakarta Pusat',
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail_page(
                                        category: 'JAKARTA SELATAN',
                                        title: 'Kebun Binatang Ragunan',
                                        judul: 'Kebun Binatang Ragunan',
                                        description: 'Kebun Binatang Ragunan atau juga yang biasa disebut Taman Margasatwa Ragunan adalah sebuah kebun binatang yang terletak di daerah Ragunan, Pasar Minggu, Jawa Barat, Indonesia. Kebun binatang seluas 140 hektare ini didirikan pada tahun 1864. Di dalamnya terdapat berbagai koleksi yang terdiri dari 295 spesies dan 4040 spesimen. Ragunan sempat ditutup selama sekitar tiga minggu sejak 19 September 2005 karena hewan-hewan di dalamnya ada yang terinfeksi flu burung, tetapi dibuka kembali pada 11 Oktober 2005. Kebun binatang ini memiliki banyak spesies hewan yang langka antara lain kakatua, orangutan, gorila, anoa dan gajah. Taman Margasatwa Ragunan adalah kebun binatang pertama di Indonesia. Kebun binatang ini didirikan pada tahun 1864 dengan nama Planten En Dierentuin yang memiliki arti "Tanaman dan Kebun Binatang".',
                                        history: 'Museum Angkut, yang terletak di Kota Batu, Indonesia, adalah destinasi wisata unik yang menghadirkan perjalanan sejarah transportasi di Indonesia dan dunia. Dibuka pada tahun 2014, museum ini memiliki lebih dari 300 koleksi kendaraan, termasuk mobil klasik, sepeda, pesawat terbang, kereta api, dan banyak lagi. Pengunjung dapat mengeksplorasi area seluas 3,5 hektar yang didesain seperti sebuah kota lama dengan beragam pameran yang menampilkan evolusi transportasi dari zaman dahulu hingga masa kini. Museum Angkut tidak hanya menjadi destinasi edukasi yang menarik, tetapi juga menyediakan berbagai wahana seru, seperti "Jurassic Park" yang menampilkan replika dinosaurus, serta wahana gantung dengan pemandangan menakjubkan ke Kota Batu. Museum Angkut telah menjadi salah satu destinasi wisata terkemuka di Jawa Timur dan memberikan pengalaman yang mendidik dan menghibur bagi pengunjung dari segala usia.',
                                        gambarAssets: 'assets/images/ragunan.png',
                                      ),
                                    ),
                                  );
                                },
                                child: _journeyCard(
                                  imageAsset: 'assets/images/ragunan.png',
                                  title: 'Kebun Binatang Ragunan',
                                  subtitle: 'Jakarta Selatan',
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail_page(
                                        category: 'JAWA TENGAH',
                                        title: 'Candi Borobudur',
                                        judul: 'Candi Borobudur',
                                        description: 'Candi Borobudur adalah sebuah candi Buddha yang terletak di Borobudur, Magelang, Jawa Tengah, Indonesia. Candi ini terletak kurang lebih 100 km di sebelah barat daya Semarang, 86 km di sebelah barat Surakarta, dan 40 km di sebelah barat laut Yogyakarta. Candi dengan banyak stupa ini didirikan oleh para penganut agama Buddha Mahayana sekitar tahun 800-an Masehi pada masa pemerintahan wangsa Syailendra. Borobudur adalah candi atau kuil Buddha terbesar di dunia, sekaligus salah satu monumen Buddha terbesar di dunia. Monumen ini terdiri atas enam teras berbentuk bujur sangkar yang di atasnya terdapat tiga pelataran melingkar, pada dindingnya dihiasi dengan 2.672 panel relief dan aslinya terdapat 504 arca Buddha. Borobudur memiliki koleksi relief Buddha terlengkap dan terbanyak di dunia. Stupa utama terbesar teletak di tengah sekaligus memahkotai bangunan ini, dikelilingi oleh tiga barisan melingkar 72 stupa berlubang yang di dalamnya terdapat arca Buddha tengah duduk bersila dalam posisi teratai sempurna dengan mudra (sikap tangan) Dharmachakra mudra (memutar roda dharma). Menurut bukti-bukti sejarah, Borobudur ditinggalkan pada abad ke-10 seiring dipindahnya pusat Kerajaan Mataram Kuno ke Jawa Timur oleh Pu Sindok.[6] Dunia mulai menyadari keberadaan bangunan ini sejak ditemukan 1814 oleh Sir Thomas Stamford Raffles, yang saat itu menjabat sebagai Gubernur Jenderal Inggris atas Jawa.',
                                        history: 'Museum Angkut, yang terletak di Kota Batu, Indonesia, adalah destinasi wisata unik yang menghadirkan perjalanan sejarah transportasi di Indonesia dan dunia. Dibuka pada tahun 2014, museum ini memiliki lebih dari 300 koleksi kendaraan, termasuk mobil klasik, sepeda, pesawat terbang, kereta api, dan banyak lagi. Pengunjung dapat mengeksplorasi area seluas 3,5 hektar yang didesain seperti sebuah kota lama dengan beragam pameran yang menampilkan evolusi transportasi dari zaman dahulu hingga masa kini. Museum Angkut tidak hanya menjadi destinasi edukasi yang menarik, tetapi juga menyediakan berbagai wahana seru, seperti "Jurassic Park" yang menampilkan replika dinosaurus, serta wahana gantung dengan pemandangan menakjubkan ke Kota Batu. Museum Angkut telah menjadi salah satu destinasi wisata terkemuka di Jawa Timur dan memberikan pengalaman yang mendidik dan menghibur bagi pengunjung dari segala usia.',
                                        gambarAssets: 'assets/images/borobudur.png',
                                      ),
                                    ),
                                  );
                                },
                                child: _journeyCard(
                                  imageAsset: 'assets/images/borobudur.png',
                                  title: 'Candi Borobudur',
                                  subtitle: 'Magelang, Jawa Tengah',
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail_page(
                                        category: 'JAWA TENGAH',
                                        title: 'Candi Prambanan',
                                        judul: 'Candi Prambanan',
                                        description: 'Candi Prambanan atau yang juga disebut Candi Roro Jonggrang adalah kompleks candi Hindu terbesar di Indonesia yang dibangun pada abad ke-9 masehi. Candi ini dipersembahkan untuk Trimurti, tiga dewa utama Hindu yaitu Brahma sebagai dewa pencipta, Wishnu sebagai dewa pemelihara, dan Siwa sebagai dewa pemusnah. Berdasarkan prasati Siwagrha nama asli kompleks candi ini adalah Siwagrha (bahsa Sansekerta yang bermakna ‘Rumah Siwa’), dan memang di garbagriha (ruang utama) candi ini bersemayam arca Siwa Mahadewa setinggi tiga meter yang menujukkan bahwa di candi ini dewa Siwa lebih diutamakan. Candi ini termasuk candi Hindu terbesar di Indonesia, sekaligus salah satu candi terindah di Asia Tenggara. Arsitektur bangunan ini berbentuk tinggi dan ramping sesuai dengan arsitektur Hindu pada umumnya dengan candi Siwa sebagai candi utama memiliki ketinggian mencapai 47 meter menjulang di tengah kompleks gugusan candi-candi yang lebih kecil. Sebagai salah satu candi termegah di Asia Tenggara, candi Prambanan menjadi daya tarik kunjungan wisatawan dari seluruh dunia.',
                                        history: 'Museum Angkut, yang terletak di Kota Batu, Indonesia, adalah destinasi wisata unik yang menghadirkan perjalanan sejarah transportasi di Indonesia dan dunia. Dibuka pada tahun 2014, museum ini memiliki lebih dari 300 koleksi kendaraan, termasuk mobil klasik, sepeda, pesawat terbang, kereta api, dan banyak lagi. Pengunjung dapat mengeksplorasi area seluas 3,5 hektar yang didesain seperti sebuah kota lama dengan beragam pameran yang menampilkan evolusi transportasi dari zaman dahulu hingga masa kini. Museum Angkut tidak hanya menjadi destinasi edukasi yang menarik, tetapi juga menyediakan berbagai wahana seru, seperti "Jurassic Park" yang menampilkan replika dinosaurus, serta wahana gantung dengan pemandangan menakjubkan ke Kota Batu. Museum Angkut telah menjadi salah satu destinasi wisata terkemuka di Jawa Timur dan memberikan pengalaman yang mendidik dan menghibur bagi pengunjung dari segala usia.',
                                        gambarAssets: 'assets/images/prambanan.png',
                                      ),
                                    ),
                                  );
                                },
                                child: _journeyCard(
                                  imageAsset: 'assets/images/prambanan.png',
                                  title: 'Candi Prambanan',
                                  subtitle: 'Klaten, Jawa Tengah',
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail_page(
                                        category: 'JAKARTA UTARA',
                                        title: 'Dufan',
                                        judul: 'Dufan',
                                        description: 'Dunia Fantasi, atau yang biasa dikenal dengan sebutan Dufan adalah sebuah taman hiburan yang terletak di kawasan Taman Impian Ancol, Jakarta Utara, Indonesia yang diresmikan dan dibuka untuk umum pada tanggal 29 Agustus 1985. Selain wahana dan pertunjukan, Dunia Fantasi juga memiliki sejumlah restoran, toko merchandise, dan arcade games. Luas Dunia Fantasi mencapai 21 hektar dari rencana pembangunan 552 hektar kawasan hiburan terpadu Taman Impian Jaya Ancol. Dufan sangat digemari oleh anak-anak maupun remaja karena disini tempat yang sangat cocok untuk mereka jelajahi dan mainkan bersama dengan keluarga, teman, maupun pasangan.',
                                        history: 'Museum Angkut, yang terletak di Kota Batu, Indonesia, adalah destinasi wisata unik yang menghadirkan perjalanan sejarah transportasi di Indonesia dan dunia. Dibuka pada tahun 2014, museum ini memiliki lebih dari 300 koleksi kendaraan, termasuk mobil klasik, sepeda, pesawat terbang, kereta api, dan banyak lagi. Pengunjung dapat mengeksplorasi area seluas 3,5 hektar yang didesain seperti sebuah kota lama dengan beragam pameran yang menampilkan evolusi transportasi dari zaman dahulu hingga masa kini. Museum Angkut tidak hanya menjadi destinasi edukasi yang menarik, tetapi juga menyediakan berbagai wahana seru, seperti "Jurassic Park" yang menampilkan replika dinosaurus, serta wahana gantung dengan pemandangan menakjubkan ke Kota Batu. Museum Angkut telah menjadi salah satu destinasi wisata terkemuka di Jawa Timur dan memberikan pengalaman yang mendidik dan menghibur bagi pengunjung dari segala usia.',
                                        gambarAssets: 'assets/images/dufan.png',
                                      ),
                                    ),
                                  );
                                },
                                child: _journeyCard(
                                  imageAsset: 'assets/images/dufan.png',
                                  title: 'Dufan',
                                  subtitle: 'Jakarta Utara',
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail_page(
                                        category: 'JAWA BARAT',
                                        title: 'Tebing Keraton',
                                        judul: 'Tebing Keraton',
                                        description: 'Tebing Keraton adalah salah satu destinasi alam yang menawan di Bandung, Jawa Barat. Terletak di kawasan Lembang, Tebing Keraton menawarkan pemandangan alam yang luar biasa. Dengan ketinggian sekitar 1.500 meter di atas permukaan laut, tempat ini memperlihatkan panorama lembah yang hijau serta tebing-tebing curam yang memikat. Wisatawan dapat menikmati keindahan alam dengan menjelajahi jalur-jalur hiking yang tersedia, menghirup udara segar di tengah pepohonan pinus yang rindang, atau hanya bersantai sambil menikmati matahari terbenam yang spektakuler. Sebagian dari tebing ini bahkan telah diadaptasi menjadi tempat bermain flying fox, yang membuat pengalaman semakin mendebarkan. Dengan cuaca yang sejuk sepanjang tahun, Tebing Keraton adalah tempat yang ideal untuk melarikan diri dari kebisingan kota dan menikmati alam yang tenang serta keindahan alam pegunungan. Selain keindahan alamnya, Tebing Keraton juga memiliki banyak warung makanan dan kafe yang menyajikan makanan lezat lokal maupun internasional. Dengan suasana yang nyaman dan santai, tempat ini cocok untuk bersantai sambil menikmati hidangan lezat. Selain itu, tempat ini juga merupakan destinasi populer untuk para fotografer dan pencinta alam yang ingin mengabadikan momen indah di atas tebing. Dengan segala pesonanya, Tebing Keraton telah menjadi salah satu tujuan wisata terkemuka di Bandung, menarik perhatian pengunjung dari berbagai penjuru untuk merasakan kedamaian dan keindahan alam pegunungan yang ditawarkannya.',
                                        history: 'Museum Angkut, yang terletak di Kota Batu, Indonesia, adalah destinasi wisata unik yang menghadirkan perjalanan sejarah transportasi di Indonesia dan dunia. Dibuka pada tahun 2014, museum ini memiliki lebih dari 300 koleksi kendaraan, termasuk mobil klasik, sepeda, pesawat terbang, kereta api, dan banyak lagi. Pengunjung dapat mengeksplorasi area seluas 3,5 hektar yang didesain seperti sebuah kota lama dengan beragam pameran yang menampilkan evolusi transportasi dari zaman dahulu hingga masa kini. Museum Angkut tidak hanya menjadi destinasi edukasi yang menarik, tetapi juga menyediakan berbagai wahana seru, seperti "Jurassic Park" yang menampilkan replika dinosaurus, serta wahana gantung dengan pemandangan menakjubkan ke Kota Batu. Museum Angkut telah menjadi salah satu destinasi wisata terkemuka di Jawa Timur dan memberikan pengalaman yang mendidik dan menghibur bagi pengunjung dari segala usia.',
                                        gambarAssets: 'assets/images/tebing keraton.png',
                                      ),
                                    ),
                                  );
                                },
                                child: _journeyCard(
                                  imageAsset: 'assets/images/tebing keraton.png',
                                  title: 'Tebing Keraton',
                                  subtitle: 'Bandung, Jawa Barat',
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail_page(
                                        category: 'DI YOGYAKARTA',
                                        title: 'Suraloka Zoo',
                                        judul: 'Suraloka Zoo',
                                        description: 'Suraloka Zoo, yang terletak di Sleman, DI Yogyakarta, adalah salah satu destinasi wisata yang menarik di wilayah ini. Taman ini memiliki fokus yang kuat pada konservasi satwa langka dan eksotis, menjadikannya tempat yang ideal untuk belajar tentang beragam makhluk hidup dari seluruh dunia. Pengunjung dapat menjelajahi berbagai habitat buatan dengan berbagai spesies binatang, mulai dari satwa lokal hingga hewan-hewan eksotis dari berbagai belahan dunia. Taman ini juga menawarkan pengalaman edukatif dengan penyelenggaraan beragam program pendidikan tentang satwa, yang cocok untuk seluruh keluarga. Pengunjung dapat mengeksplorasi berbagai wahana dan area taman yang dirancang dengan baik, termasuk taman bermain anak-anak, serta restoran yang menyediakan pemandangan yang indah. Suraloka Zoo adalah tempat yang merangsang rasa ingin tahu akan dunia satwa sambil menawarkan kesempatan untuk menjalani petualangan yang mendidik dan menghibur di tengah alam yang indah.',
                                        history: 'Museum Angkut, yang terletak di Kota Batu, Indonesia, adalah destinasi wisata unik yang menghadirkan perjalanan sejarah transportasi di Indonesia dan dunia. Dibuka pada tahun 2014, museum ini memiliki lebih dari 300 koleksi kendaraan, termasuk mobil klasik, sepeda, pesawat terbang, kereta api, dan banyak lagi. Pengunjung dapat mengeksplorasi area seluas 3,5 hektar yang didesain seperti sebuah kota lama dengan beragam pameran yang menampilkan evolusi transportasi dari zaman dahulu hingga masa kini. Museum Angkut tidak hanya menjadi destinasi edukasi yang menarik, tetapi juga menyediakan berbagai wahana seru, seperti "Jurassic Park" yang menampilkan replika dinosaurus, serta wahana gantung dengan pemandangan menakjubkan ke Kota Batu. Museum Angkut telah menjadi salah satu destinasi wisata terkemuka di Jawa Timur dan memberikan pengalaman yang mendidik dan menghibur bagi pengunjung dari segala usia.',
                                        gambarAssets: 'assets/images/suraloka zoo.png',
                                      ),
                                    ),
                                  );
                                },
                                child: _journeyCard(
                                  imageAsset: 'assets/images/suraloka zoo.png',
                                  title: 'Suraloka Zoo',
                                  subtitle: 'Sleman, DI Yogyakarta',
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => detail_page(
                                        category: 'JAWA TIMUR',
                                        title: 'Museum Angkut',
                                        judul: 'Museum Angkut',
                                        description: 'Museum Angkut adalah destinasi yang luar biasa untuk para pecinta sejarah transportasi. Museum ini memanjakan pengunjung dengan perjalanan melalui sejarah kendaraan, dari zaman prasejarah hingga era modern. Dengan lebih dari 300 koleksi kendaraan, termasuk mobil klasik, sepeda antik, hingga pesawat terbang, Museum Angkut adalah sebuah tempat yang mengesankan. Para pengunjung dapat mengeksplorasi pameran dalam berbagai tema yang menampilkan kondisi kendaraan serta suasana yang sesuai dengan era mereka. Museum ini juga memiliki pameran interaktif yang memungkinkan pengunjung untuk merasakan bagaimana rasanya mengendarai beberapa kendaraan ikonik. Selain kendaraan, Museum Angkut juga memiliki Batu Secret Zoo yang menawarkan pengalaman menyenangkan dengan hewan-hewan eksotis dan wahana menarik. Kombinasi dari koleksi kendaraan yang luar biasa dan zona hiburan membuat Museum Angkut menjadi tempat yang cocok untuk dikunjungi oleh keluarga dan penggemar sejarah transportasi. Dengan suasana yang unik dan edukatif, museum ini menawarkan wawasan yang mendalam tentang perjalanan transportasi dari masa ke masa.',
                                        history: 'Museum Angkut, yang terletak di Kota Batu, Indonesia, adalah destinasi wisata unik yang menghadirkan perjalanan sejarah transportasi di Indonesia dan dunia. Dibuka pada tahun 2014, museum ini memiliki lebih dari 300 koleksi kendaraan, termasuk mobil klasik, sepeda, pesawat terbang, kereta api, dan banyak lagi. Pengunjung dapat mengeksplorasi area seluas 3,5 hektar yang didesain seperti sebuah kota lama dengan beragam pameran yang menampilkan evolusi transportasi dari zaman dahulu hingga masa kini. Museum Angkut tidak hanya menjadi destinasi edukasi yang menarik, tetapi juga menyediakan berbagai wahana seru, seperti "Jurassic Park" yang menampilkan replika dinosaurus, serta wahana gantung dengan pemandangan menakjubkan ke Kota Batu. Museum Angkut telah menjadi salah satu destinasi wisata terkemuka di Jawa Timur dan memberikan pengalaman yang mendidik dan menghibur bagi pengunjung dari segala usia.',
                                        gambarAssets: 'assets/images/museum angkut.png',
                                      ),
                                    ),
                                  );
                                },
                                child: _journeyCard(
                                  imageAsset: 'assets/images/museum angkut.png',
                                  title: 'Museum Angkut',
                                  subtitle: 'Malang, Jawa Timur',
                                ),
                              ),
                            ],
                          ),  
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      );     
    },
          suggestionsBuilder: (BuildContext context, SearchController controller) {
            return List<ListTile>.generate(10, (int index) {
              final String item = 'kategori $index';
              return ListTile(
                title: Text(item),
                onTap: () {
                  setState(() {
                    controller.closeView(item);
                  });
                },
              );
            });
          },
        ),
      ),
    );
  }
}
//           child: Container(
//             child: Container(
//               height: 800,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: Colors.deepPurple[50],
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30),
//                   topRight: Radius.circular(30),
//                 ),
//               ),
//               child: ListView(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 30, left: 30),
//                     child: Text(
//                       "Journey Categories",
//                       style: TextStyle(
//                         fontSize: 19,
//                         color: Colors.black87,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
                  
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }