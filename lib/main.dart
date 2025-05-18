import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,// sağ üst kısımda ki debug yazısını kaldırdım
      title: 'İzmirim Kart',//sitenin adı
      home: const MyHomePage(title: 'İzmirim Kart'),//app bar da ki sol da ki yazı
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    // Sayfanın arka plan rengi beyaz
    backgroundColor: Colors.white,
    body: SafeArea(
      child: SingleChildScrollView(
        // Sayfa kaydırılabilir hale getirdim yoksa hata veriyordu
        child: Column(
          children: [
            //  Appbar alanı
            Container(
              width: double.infinity, // Genişlik ayarı tam kaplıyor
              height: 320, // Yükseklik ayarı
              decoration: const BoxDecoration(
                // Arka plan için araştırarak bulduğum renk ayarı
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF9C27B0), 
                    Color(0xFFE91E63), 
                  ],
                  begin: Alignment.topLeft, // Sol üstten başla
                  end: Alignment.bottomRight, // Sağ alta doğru bitir
                ),
                // Alt köşeleri yuvarlat
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
              // İçeriği sola hizala
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Üst satır: Başlık ve Menü ikonu
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Sağ ve sol kenarlara yasla
                    children: [
                      // Uygulama başlığı
                      const Text(
                        "İZMİRİM KART",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Menü ikonu (şimdilik işlevsiz)
                      IconButton(
                        icon: const Icon(Icons.menu, color: Colors.white, size: 28),//ıcon ve ayarları
                        onPressed: () {}, 
                      ),
                    ],
                  ),

                  const SizedBox(height: 20), // Başlık ile kart arası boşluk

                  //  Dijital Kart Oluştur kısmı kodları
                  Container(
                    height: 100,
                    width: double.infinity, // Kart ekranı yatayda tamamen kaplar
                    decoration: BoxDecoration(
                      // Kart için geçişli renk ayarı bunu da araştırarak buldum
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF7F00FF), 
                          Color(0xFFAB47BC), 
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16), // Köşeleri 
                      boxShadow: [
                        // Hafif gölge ver
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), // Siyah renk
                          blurRadius: 6,
                          
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        // Kart içeriği 
                        Padding(
                          padding: const EdgeInsets.all(12.0), // İçerik ile kenarlar arası boşluk
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Dijital Kart Oluştur',//yazı ve altında kiler yazının ayarları
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 6), // Başlık ile açıklama arası boşluk
                              // Ulaşım yazısı
                              Text(
                                'Ulaşım için dijital kartınızı şimdi oluşturun!',
                                style: TextStyle(
                                  color: Colors.white,//rengi ve altında ki yazı kalınlığı
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Icon ekleme kodları
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Opacity(
                            opacity: 0.1, // Çok saydam hale getir (arka plan efekti gibi)
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10, bottom: 10),
                              child: Icon(
                                Icons.credit_card, // Kredi kartı ikonu
                                size: 60,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16), // Kart ile diğer bileşenler arasında boşluk


                     //Row Kullandım içerisinde ise container var 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 8),
                            padding: const EdgeInsets.all(12),
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 4,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                'Bakiye Yükle',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 8),
                            padding: const EdgeInsets.all(12),
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.purple  ,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 4,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                'Kart Detayı',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
               const SizedBox(height: 40),

                //Sayfanın Ortasında Bulunan 4 Tane butonunun kodları
                //Ayrı ayrı Row kullandım ki uygulama da ki gibi olsunlar
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [//row içine children açtım 
                  ElevatedButton(//butonu ekledim fakat tıklama özelliği yok
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(//butonun tasarımı 
                      backgroundColor: Colors.white,//butonun arka plan rengi
                      fixedSize: const Size(190, 80),//butonun genişliği ve yükseklik ayarı
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),//kutuları ovalleştirdim
                      ),
                    ),
                    child: Column(//column kullandım ıcon ve yazı alt üst olsun
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.directions_bus, color: Colors.blue),//ıcon ve rengi
                        SizedBox(height: 8),//arasında ki boşluk
                        Text('Ulaşım', style: TextStyle(color: Colors.black)),//ulaşım yazısı ve rengi
                      ],
                    ),
                  ),
                  //Yakınımda ki duraklar kutusu ve tasarımı yukarıda ki ile aynılar
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(190, 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.bus_alert, color: Colors.blue),
                        SizedBox(height: 8),
                        Text("Yakınımdaki Duraklar", style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              //Bu kısımda yeni bir Row kullandım 
              //Yukarıda ki ile aynılar herşey
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(200, 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.location_on, color: Colors.blue),
                        SizedBox(height: 8),
                        Text("Nasıl Giderim?", style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(200, 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.apartment, color: Colors.blue),
                        SizedBox(height: 8),
                        Text("Kart Başvuruları", style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              //mavi arka plan renkli içerisinde text olan kutunun kodları
              Container(
                width: 300,//containerın yatay ayarı
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(12),//kutuyu ovalleştirdim
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Text(
                  'İzmir Şehir Kart ile fırsatlara dokunmaya hazır mısınız?',
                  textAlign: TextAlign.center,//metini yatay ve ortalı ayarladım
                  style: TextStyle(//yazının ayarları
                    fontSize: 16,//boyutunu ayarladım
                    color: Colors.white,//yazı rengini ayarladım
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),


      //Bu kısımı araştırarak yaptım Container içerisine 5 tane column kullanarak sıraladım
      //ılk ayarlamalardan sonrası çok kolay geldi
      bottomNavigationBar: Container(
        color: Colors.white,//container arka plan rengi
        height: 70,//yüksekliği
        child: Row(//row kullandım ki yatay olsunlar
          mainAxisAlignment: MainAxisAlignment.spaceAround,//bu kod aralarında boşluk olsun diye
          children: const [
            Column(//column ile dikey yaptım ki ıcon ve altında yazısı olsun diye
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home, color: Colors.grey),//Ev ıconu ve rengi
                SizedBox(height: 4),//arasında ki boşluk
                Text('Ana Sayfa', style: TextStyle(color: Colors.black)),//Ana sayfa yazısı ve rengi
              ],
            ),//column kapattım ve yeni column açtım
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.credit_card, color: Colors.grey),//Kart ıconum  ve rengi
                SizedBox(height: 4),//arasında ki boşluk
                Text('Kartlarım', style: TextStyle(color: Colors.black)),//Kartlarım yazısı ve rengi
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.qr_code, color: Colors.blueAccent),//qr code ıconu koydum
                SizedBox(height: 4),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, color: Colors.grey),//yıldız ıconu ve rengi
                SizedBox(height: 4),
                Text('Favorilerim', style: TextStyle(color: Colors.black)),//Favorilerim yazısı
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.wallet, color: Colors.grey),//cüzdan ıconu ve rengi
                SizedBox(height: 4),
                Text('Cüzdan', style: TextStyle(color: Colors.black)),//cüzdan yazısı ve rengi
              ],
            ),
          ],
        ),
      ),
    );
  }
}
