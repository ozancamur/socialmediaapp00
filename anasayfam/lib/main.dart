import 'package:anasayfam/gonderikarti.dart';
import 'package:anasayfam/profilsayfasi.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Projem',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: AnaSayfa());
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0.0,

          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32.0,
            ),
            onPressed: () {},
          ),

          title: Text(
            "SocialWorld",
            style: TextStyle(fontSize: 20.0, color: Colors.grey),
          ),

          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.purple, size: 32.0),
              onPressed: () {
                showModalBottomSheet(context: context, builder: (BuildContext context) {
                  return Column(
                    children: <Widget>[
                      duyuru("Ceyda senin bir fotoğrafını beğendi","10 dakika önce"),
                      duyuru("Ceyda sana bir mesaj gönderdi","1 saat önce"),
                      duyuru("Elon Musk seni takip etti","2 gün önce")
                    ],
                  );
                });
              },
            )
          ], //başlığı ortala demektir
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 100.0,
              decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 3.0), //kenar gölgeler,
                    blurRadius: 5.0 //gölge keskinliği
                    ),
              ]),
              child: ListView(
                scrollDirection: Axis.horizontal, //yatay olarak kaydırma
                children: <Widget>[
                  profilKartiOlustur(
                    "Ender Çamur",
                    "https://cdn.pixabay.com/photo/2016/09/10/17/18/book-1659717_960_720.jpg",
                    "Ender",
                    "https://cdn.pixabay.com/photo/2016/02/11/16/59/dog-1194083_960_720.jpg"
                    ,),
                  profilKartiOlustur(
                    "Semra Çamur",
                    "https://cdn.pixabay.com/photo/2016/03/26/23/00/umbrellas-1281751_960_720.jpg",
                    "Semra",
                    "https://cdn.pixabay.com/photo/2015/09/18/00/24/robin-944887_960_720.jpg",
                      ),
                  profilKartiOlustur(
                    "Onur Çamur",
                    "https://cdn.pixabay.com/photo/2015/04/25/03/09/cork-738603_960_720.jpg",
                    "Onur",
                    "https://cdn.pixabay.com/photo/2020/10/04/10/43/horse-5625922_960_720.jpg",
                      ),
                  profilKartiOlustur(
                    "Orçun Çamur",
                    "https://cdn.pixabay.com/photo/2015/04/20/13/12/bed-731162_960_720.jpg",
                    "Orçun",
                    "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg",
                      ),
                  profilKartiOlustur(
                    "Ozan Çamur",
                    "https://cdn.pixabay.com/photo/2016/11/21/14/30/black-people-1845715_960_720.jpg",
                    "Ozan",
                    "https://cdn.pixabay.com/photo/2014/11/29/19/33/bald-eagle-550804_960_720.jpg",
                      ),
                  profilKartiOlustur(
                    "Çağla Çamur",
                    "https://cdn.pixabay.com/photo/2014/12/15/15/36/cloth-569222_960_720.jpg",
                    "Çağla",
                    "https://pixabay.com/tr/photos/inek-s%C4%B1%C4%9F%C4%B1r-%C3%A7iftlik-hayvanlar%C4%B1-5608144/",
                      ),
                  profilKartiOlustur(
                    "Efe Çamur",
                    "https://cdn.pixabay.com/photo/2016/05/31/11/26/baby-1426651_960_720.jpg",
                    "Efe",
                    "https://cdn.pixabay.com/photo/2013/05/29/22/25/elephant-114543_960_720.jpg",
                      ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0
              ),
            GonderiKarti(
              isimSoyad: "Ender Camur",
              gecenSure: "1 sene önce",
              aciklama: "Hayat beni neden yoruyorsun",
              profilResimLinki: "https://cdn.pixabay.com/photo/2016/02/11/16/59/dog-1194083_960_720.jpg",
              gonderiResimLinki: "https://cdn.pixabay.com/photo/2016/02/11/16/59/dog-1194083_960_720.jpg",
              
            ),
            GonderiKarti(
              isimSoyad: "Zeynep Ünal",
              gecenSure: "1 ay önce",
              aciklama: "Woaw",
              profilResimLinki: "https://cdn.pixabay.com/photo/2018/08/23/22/29/girl-3626901_960_720.jpg",
              gonderiResimLinki: "https://cdn.pixabay.com/photo/2021/01/23/12/58/mountains-5942460_960_720.jpg",
              
            ),
            
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.purple[300],
          child: Icon(Icons.add_a_photo, color: Colors.white,)),
      );
    }

  Padding duyuru(String mesaj, String gecenSure) {
    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            mesaj,
                            style: TextStyle(fontSize: 15.0),
                          ),
                          Text(gecenSure)
                        ],
                      ),
                    );
  }

  Widget profilKartiOlustur(String isimSoyad, String kapakResimlinki ,String kullaniciAdi, String resimLinki) {
    return Material( //Sıçrama efekti için refactor widget material
          child: InkWell(
        onTap: () async {
          bool donenVeri = await Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => ProfilSayfasi(
              profilResimlinki: resimLinki, 
              kullaniciAdi: kullaniciAdi, 
              isimSoyad: isimSoyad, 
              kapakResmilinki: kapakResimlinki,
              ),
            ),
          );
          if(donenVeri){
            print("Kullanıcı profil sayfasından döndü.");
          }//rota sayfa değişim animasyonu
        },
            child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(//story1
              children: <Widget>[
            Stack(
              alignment: Alignment.topLeft,
              children: <Widget>[
                Hero(
                    tag: kullaniciAdi,
                                  child: Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2.0, color: Colors.grey),
                        borderRadius: BorderRadius.circular(35),
                        image: DecorationImage(
                            image: NetworkImage(resimLinki), fit: BoxFit.cover)),
                  ),
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(width: 2.0, color: Colors.white),
                  ),
                )
              ],
            ),
            SizedBox(height: 4.0),
            Text(
              kullaniciAdi,
              style: TextStyle(fontSize: 15.0, color: Colors.black),
            )
          ]),
        ),
      ),
    );
  }
}




 