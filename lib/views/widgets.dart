import 'package:flutter/material.dart';

//HomePage AppBar
class HomePageAppTile extends StatelessWidget {
  const HomePageAppTile({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'Farg\'ona, \n',
        style: TextStyle(
            fontSize: 18, color: Colors.blue, fontWeight: FontWeight.bold),
        children: <TextSpan>[
          TextSpan(
            text: 'Payshanba',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black),
          ),
          TextSpan(
            text: ' 8-fevral',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
//HomePage AppBar end

//GlobalDrawer
class RightDriver extends StatelessWidget {
  const RightDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: FittedBox(fit: BoxFit.contain,child: Icon(Icons.close))),
          Expanded(
            child: ListView(
              children: <String>[
                'Angren',
                'Andijon',
                'Arnasoy',
                'Ashxabod',
                'Bekobod',
                'Bishkek',
                'Boysun',
                'Buloqboshi',
                'Burchmulla',
                'Buxoro',
                'Gazli',
                'Guliston',
                'Denov',
                'Dehqonobod',
                'Do‘stlik',
                'Dushanbe',
                'Jalolobod',
                'Jambul',
                'Jizzax',
                'Jomboy',
                'Zarafshon',
                'Zomin',
                'Kattaqo‘rg‘on',
                'Konibodom',
                'Konimex',
                'Koson',
                'Kosonsoy',
                'Marg‘ilon',
                'Mingbuloq',
                'Muborak',
                'Mo‘ynoq',
                'Navoiy',
                'Namangan',
                'Nukus',
                'Nurota',
                'Olmaota',
                'Olot',
                'Oltiariq',
                'Oltinko‘l',
                'Paxtaobod',
                'Pop',
                'Rishton',
                'Sayram',
                'Samarqand',
                'Tallimarjon',
                'Taxtako‘pir',
                'Termiz',
                'Tomdi',
                'Toshkent',
                'Toshhovuz',
                'Turkiston',
                'Turkmanobod',
                'To‘rtko‘l',
                'Uzunquduq',
                'Urganch',
                'Urgut',
                'O‘smat',
                'Uchtepa',
                'Uchquduq',
                'Uchqo‘rg‘on',
                'O‘sh',
                'O‘g‘iz',
                'Farg‘ona',
                'Xazorasp',
                'Xiva',
                'Xonobod',
                'Xonqa',
                'Xo‘jand',
                'Xo‘jaobod',
                'Chimboy',
                'Chimkent',
                'Chortoq',
                'Chust',
                'Shahrixon',
                'Sherobod',
                'Shovot',
                'Shumanay',
                'Yangibozor',
                'G‘allaorol',
                'G‘uzor',
                'Qarshi',
                'Qarshi',
                'Qiziltepa',
                'Qorako‘l',
                'Qorovulbozor',
                'Quva',
                'Qumqo‘rg‘on',
                'Qo‘ng‘irot',
                'Qo‘rg‘ontepa',
                'Qo‘qon',
              ].map((String text) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 10,
                    clipBehavior: Clip.hardEdge,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: ListTile(
                      onTap: (){},
                      title: Text(text),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
//GlobalDriver End.

//HomePage TimeView Card
class HomeTimeViewer extends StatelessWidget {
  const HomeTimeViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      color: Colors.white,
      elevation: 10,
      shadowColor: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.center,
          height: 100,
          width: 300,
          child: RichText(
            text: const TextSpan(
              text: 'Peshin vaqtiga, \n',
              style: TextStyle(
                  fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: '2 soat 4 daqiqa qoldi',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
//HomePage TimeView Card End

//
