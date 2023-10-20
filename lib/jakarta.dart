import 'package:flutter/material.dart';
import 'package:projekweb/detail_page.dart';

class jakarta extends StatefulWidget {
  const jakarta({super.key});

  @override
  State<jakarta> createState() => _jakartaState();
}

class _jakartaState extends State<jakarta> {
Widget _journeyCard({
    required String imageAsset, 
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
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepPurple[300],
        title: Text(
          "DKI Jakarta",
          style: TextStyle(
            fontSize: 23,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Container(
          height: 800,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.deepPurple[50],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
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
                                  category: 'JAKARTA UTARA',
                                  title: 'Dufan',
                                  judul: 'Dufan',
                                  description: 'Dunia Fantasi, atau yang biasa dikenal dengan sebutan Dufan adalah sebuah taman hiburan yang terletak di kawasan Taman Impian Ancol, Jakarta Utara, Indonesia yang diresmikan dan dibuka untuk umum pada tanggal 29 Agustus 1985. Selain wahana dan pertunjukan, Dunia Fantasi juga memiliki sejumlah restoran, toko merchandise, dan arcade games. Luas Dunia Fantasi mencapai 21 hektar dari rencana pembangunan 552 hektar kawasan hiburan terpadu Taman Impian Jaya Ancol. Dufan sangat digemari oleh anak-anak maupun remaja karena disini tempat yang sangat cocok untuk mereka jelajahi dan mainkan bersama dengan keluarga, teman, maupun pasangan.',
                                  history: '',
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
                                  category: 'JAKARTA UTARA',
                                  title: 'Jakarta Bird Land',
                                  judul: 'Jakarta Bird Land',
                                  description: 'Jakarta Bird Land merupakan sebuah surga bagi para pecinta burung dan penggemar alam. Taman ini menawarkan pengalaman yang memikat dengan lebih dari 1.100 burung dari berbagai spesies yang ditempatkan dalam lingkungan yang asri dan alami. Para pengunjung dapat mengeksplorasi keindahan alam dan keanekaragaman hayati melalui berbagai atraksi menarik, seperti burung eksotis yang cantik dan menarik, serta pertunjukan burung yang menghibur. Selain menjadi tempat yang ideal untuk bersantai dan menikmati keindahan alam, Jakarta Bird Land juga memiliki peran penting dalam upaya konservasi, edukasi, dan pelestarian lingkungan alam dengan menyediakan pemahaman yang lebih baik tentang pentingnya pelestarian burung dan ekosistem mereka. Taman ini juga menawarkan fasilitas modern, termasuk kafe yang nyaman dan tempat bermain anak-anak, menjadikannya tujuan rekreasi yang ideal untuk seluruh keluarga. Pengunjung dapat memanfaatkan kesempatan untuk mendekati alam, memperluas pengetahuan tentang burung, dan berkontribusi pada upaya pelestarian lingkungan. Jakarta Bird Land menggabungkan hiburan, edukasi, dan pelestarian alam dalam paket yang mengasyikkan, menjadikannya tempat yang wajib dikunjungi di Jakarta bagi siapa saja yang ingin mengalami keajaiban dunia burung dan ekosistemnya.',
                                  history: '',
                                  gambarAssets: 'assets/images/bird land.png',
                                ),
                              ),
                            );
                          },
                        child: _journeyCard(
                          imageAsset: 'assets/images/bird land.png',
                          title: 'Jakarta Bird Land',
                          subtitle: 'Jakarta Utara',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                              MaterialPageRoute(
                                builder: (context) => detail_page(
                                  category: 'JAKARTA UTARA',
                                  title: 'Gondola',
                                  judul: 'Gondola',
                                  description: 'Gondola adalah salah satu atraksi wisata yang menarik di Jakarta Utara. Terletak di kawasan Ancol, Gondola adalah sarana transportasi unik yang memberikan pengalaman menyusuri kawasan pesisir laut Jakarta dengan pemandangan laut biru yang memukau. Wisatawan dapat naik gondola yang menggantung di atas air, menghubungkan beberapa titik penting di Ancol, seperti Pantai Carnaval, Pantai Festival, dan Pulau Bidadari. Selama perjalanan gondola, pengunjung dapat menikmati pemandangan indah laut Jakarta, dermaga kapal pesiar, serta taman-taman yang hijau. Gondola ini bukan hanya menjadi sarana transportasi, tetapi juga atraksi wisata yang cocok untuk keluarga dan pasangan yang ingin menikmati momen romantis di atas air. Selain menawarkan pemandangan yang memukau, Gondola juga menyediakan berbagai fasilitas hiburan di sekitarnya. Wisatawan dapat menikmati berbagai wahana permainan di Pantai Carnaval, menjelajahi Pulau Bidadari yang memiliki keindahan alam dan sejarah, serta menikmati kuliner lezat di restoran-restoran di sekitar Ancol. Dengan suasana yang menyenangkan dan pemandangan yang menakjubkan, Gondola di Jakarta Utara menjadi destinasi wisata yang populer untuk menghabiskan waktu bersama keluarga dan teman-teman.',
                                  history: '',
                                  gambarAssets: 'assets/images/gondola.png',
                                ),
                              ),
                            );
                          },
                        child: _journeyCard(
                          imageAsset: 'assets/images/gondola.png',
                          title: 'Gondola',
                          subtitle: 'Jakarta Utara',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                              MaterialPageRoute(
                                builder: (context) => detail_page(
                                  category: 'JAKARTA UTARA',
                                  title: 'Ecopark',
                                  judul: 'Ecopark',
                                  description: 'Ecopark adalah sebuah destinasi wisata alam yang menawarkan perpaduan harmonis antara hutan dan kawasan rekreasi di tengah kesibukan ibu kota. Terletak di kawasan Jakarta Utara, Ecopark menjadi surga bagi para pecinta alam dan lingkungan. Kawasan ini menawarkan sejumlah fasilitas menarik seperti jalur hiking, air terjun buatan yang segar, dan area perkemahan yang memikat. Pengunjung dapat menjelajahi keindahan hutan tropis Jakarta sambil menikmati aktivitas rekreasi outdoor yang menyegarkan. Ekosistem alam yang terjaga dengan baik dan berbagai jenis tumbuhan membuat Ecopark menjadi tempat yang ideal untuk bersantai, menjauhkan diri dari kebisingan perkotaan, serta berkontribusi pada pelestarian lingkungan. Selain menjadi tempat rekreasi, Ecopark Jakarta Utara juga memiliki peran penting dalam upaya konservasi alam. Kawasan ini berusaha mempertahankan beragam spesies tumbuhan dan hewan yang mendiami ekosistemnya. Dengan menyajikan keindahan alam yang masih asli, Ecopark juga berperan dalam mendidik pengunjung tentang pentingnya menjaga alam dan lingkungan. Dengan suasana yang damai dan sejuk, Ecopark Jakarta Utara mengundang siapa saja yang menginginkan pelarian dari hiruk-pikuk kota untuk bersatu dengan alam dan menikmati keindahan serta pesona alam yang belum terjamah oleh urbanisasi.',
                                  history: '',
                                  gambarAssets: 'assets/images/ecopark.png',
                                ),
                              ),
                            );
                          },
                        child: _journeyCard(
                          imageAsset: 'assets/images/ecopark.png',
                          title: 'Ecopark',
                          subtitle: 'Jakarta Utara',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                              MaterialPageRoute(
                                builder: (context) => detail_page(
                                  category: 'JAKARTA UTARA',
                                  title: 'Faunaland',
                                  judul: 'Faunaland',
                                  description: 'Faunaland merupakan sebuah destinasi wisata yang memukau para pengunjung dengan berbagai macam pengalaman unik dan mendidik. Tempat ini menawarkan kesempatan untuk menjelajahi kehidupan hewan-hewan yang menakjubkan dalam lingkungan yang nyaman dan mendukung konservasi alam. Faunaland memiliki beragam hewan, dari burung eksotis hingga satwa liar yang langka, memberikan pengunjungnya kesempatan untuk lebih dekat dengan keanekaragaman hayati. Tidak hanya sebagai tempat hiburan, Faunaland juga memiliki tujuan edukasi yang kuat. Mereka sering mengadakan program-program edukasi untuk membangkitkan kesadaran tentang pentingnya pelestarian alam dan keanekaragaman hayati. Pengunjung dapat memahami lebih banyak tentang kehidupan hewan-hewan yang ada di seluruh dunia dan bagaimana mereka dapat berkontribusi pada upaya pelestarian. Faunaland adalah destinasi ideal untuk seluruh keluarga, menggabungkan hiburan dan pembelajaran dalam satu kunjungan yang tak terlupakan.',
                                  history: '',
                                  gambarAssets: 'assets/images/faunaland.png',
                                ),
                              ),
                            );
                          },
                        child: _journeyCard(
                          imageAsset: 'assets/images/faunaland.png',
                          title: 'Faunaland',
                          subtitle: 'Jakarta Utara',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                              MaterialPageRoute(
                                builder: (context) => detail_page(
                                  category: 'JAKARTA UTARA',
                                  title: 'Pelabuhan Sunda Kelapa',
                                  judul: 'Pelabuhan Sunda Kelapa',
                                  description: 'Pelabuhan Sunda Kelapa adalah salah satu tempat bersejarah yang sangat penting di Indonesia. Pelabuhan ini telah menjadi pusat aktivitas perdagangan dan pengiriman selama berabad-abad, yang membentuk sejarah maritim negara ini. Wisatawan yang mengunjungi Pelabuhan Sunda Kelapa dapat merasakan atmosfer kuno yang memikat, dengan kapal layar kayu tradisional, yang dikenal sebagai "pinisi," berlabuh di pelabuhan ini. Sebuah kunjungan ke tempat ini memberikan wawasan tentang sejarah maritim Indonesia dan betapa pentingnya perdagangan laut telah menjadi dalam mengembangkan budaya dan ekonomi negara ini. Selain sejarah yang kaya, wisatawan juga dapat menikmati arsitektur khas pelabuhan ini yang sarat akan unsur budaya dan sejarah. Kayu-kayu jati yang digunakan dalam pembangunan kapal dan bangunan sekitar memberikan pandangan yang memukau dan mengingatkan pada masa lalu. Wisatawan juga dapat berinteraksi dengan para nelayan yang bekerja di sini, belajar tentang cara hidup mereka, dan bahkan menaiki salah satu kapal layar untuk merasakan pengalaman unik di tengah laut. Jadi, Pelabuhan Sunda Kelapa tidak hanya menghidupkan kembali sejarah maritim, tetapi juga memberikan pengalaman yang berharga kepada para pengunjung yang ingin menjelajahi warisan maritim Indonesia.',
                                  history: '',
                                  gambarAssets: 'assets/images/sunda kelapa.png',
                                ),
                              ),
                            );
                          },
                        child: _journeyCard(
                          imageAsset: 'assets/images/sunda kelapa.png',
                          title: 'Pelabuhan Sunda Kelapa',
                          subtitle: 'Jakarta Utara',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                              MaterialPageRoute(
                                builder: (context) => detail_page(
                                  category: 'JAKARTA UTARA',
                                  title: 'Rumah Si Pitung',
                                  judul: 'Rumah Si Pitung',
                                  description: 'Rumah Si Pitung adalah sebuah tempat wisata yang terletak di Jakarta Utara. Tempat ini menghadirkan pengalaman unik yang memungkinkan pengunjung untuk merasakan atmosfer dan cerita dari tokoh legendaris Jakarta, yaitu Si Pitung. Terinspirasi dari karakter pitung yang dikenal sebagai pahlawan rakyat kecil pada zaman penjajahan Belanda, pengunjung akan diajak mengelilingi berbagai sudut kota tua yang masih mempertahankan arsitektur kolonial klasik. Rumah Si Pitung menjadi destinasi menarik bagi mereka yang ingin mengetahui lebih dalam mengenai sejarah Jakarta pada masa lalu. Di Rumah Si Pitung, pengunjung dapat menikmati berbagai atraksi, seperti pameran artefak sejarah dan pertunjukan seni tradisional.',
                                  history: '',
                                  gambarAssets: 'assets/images/si pitung.png',
                                ),
                              ),
                            );
                          },
                        child: _journeyCard(
                          imageAsset: 'assets/images/si pitung.png',
                          title: 'Rumah Si Pitung',
                          subtitle: 'Jakarta Utara',
                        ),
                      ),
                    ],
                  ),  
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}