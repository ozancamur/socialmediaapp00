import 'package:anasayfam/gonderikarti.dart';
import 'package:flutter/material.dart';

class ProfilSayfasi extends StatelessWidget {

final String isimSoyad;
final String kullaniciAdi;
final String kapakResmilinki;
final String profilResimlinki;

  const ProfilSayfasi({Key key, this.isimSoyad, this.kullaniciAdi, this.kapakResmilinki, this.profilResimlinki}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[

              Container(
                height: 230.0,
                //color: Colors.yellow,
              ),

              Container(
                height: 180.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                    image: NetworkImage(kapakResmilinki),
                    fit: BoxFit.cover,  
                  ),
                )
              ),

              Positioned( //stack içerisindeki widgetların pozisyonlarını dğiştirmek için kullanılır
                left: 20.0, //stack in sol tarafından 20px sağa kaydırır
                bottom: 0.0, //satckin alt tarafından px kadar yukarı kaydırır.
                              child: Hero(
                                  tag: kullaniciAdi,
                                                              child: Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(60.0),
                    border: Border.all(width: 2.0, color: Colors.white),
                    image: DecorationImage(
                      image: NetworkImage(profilResimlinki),
                      fit: BoxFit.cover,  
                  ),
                  ),
                ),
                              ),
              ),

              Positioned(
                top: 185.0,
                left: 145.0,
                              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      isimSoyad,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                    Text(
                      kullaniciAdi,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ),
                    ),

                  ],
                ),
              ),

              Positioned(
                top: 130.0,
                right: 15.0,
                              child: Container(
                  width: 100.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[200],
                    border: Border.all(width: 2.0, color: Colors.white)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.add_circle,size:18.0,),
                      SizedBox(width: 2.0,),
                      Text(
                        "Takip Et",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        )
                      )
                    ],
                  ),
                ),
              ),

              IconButton(icon: Icon(Icons.arrow_back, color: Colors.black), onPressed: (){
                Navigator.pop(context,true);
              })
            ],
          ),
          SizedBox(height: 20.0),

          Container(
            height: 75.0,
            color: Colors.grey.withOpacity(0.5), //şeffaflık 1-0 arasında,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                
                sayac("Takipci","20K"),
                sayac("Takip","500"),
                sayac("Paylaşım","75")

                
              ],
            )
          ),

          GonderiKarti(
              isimSoyad: isimSoyad,
              gecenSure: "1 ay önce",
              aciklama: "Woaw",
              profilResimLinki: profilResimlinki,
              gonderiResimLinki: "https://cdn.pixabay.com/photo/2021/01/23/12/58/mountains-5942460_960_720.jpg",
              
            ),
            
        ],
      ),
    );
  }

  Column sayac(String baslik, String sayi) {
    return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    sayi,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                        ),
                  ),
                  SizedBox(height:1.0),
                  Text(
                    baslik,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600]
                    ),
                  )
                ]
              );
  }
}