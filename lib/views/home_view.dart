import 'package:flutter/material.dart';
import 'package:namoz_vaqtlari/views/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final Map<String, String> prayerNames = {
    'tong_saharlik': 'Tong',
    'quyosh': 'Quyosh',
    'peshin': 'Peshin',
    'asr': 'Asr',
    'shom_iftor': 'Shom',
    'hufton': 'Xufton'
  };
  Map<String, dynamic> prayerTimes = {};

  @override
  void initState() {
    super.initState();
    fetchPrayerTimes().then((value) => setState(() {
      prayerTimes = value['times'];
    }));
  }

  Future<Map<String, dynamic>> fetchPrayerTimes() async {
    final response = await http.get(Uri.parse('https://islomapi.uz/api/present/day?region=farg%27ona'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load prayer times');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
          backgroundColor: Colors.blue[100],
          title: FittedBox(fit: BoxFit.contain,child: HomePageAppTile())
      ),
      endDrawer: RightDriver(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            FittedBox(fit: BoxFit.contain,child: HomeTimeViewer()),
            SizedBox(height: 10,),
            Column(children: prayerNames.entries.map((entry) {
              String apiName = entry.key;
              String uzbekName = entry.value;

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  elevation: 20,
                  color: uzbekName == 'Peshin' ? Colors.blueAccent : null,
                  child: ListTile(
                    title: Text(uzbekName),
                    trailing: Text(prayerTimes[apiName] ?? '', style: TextStyle(fontSize: 18)),
                  ),
                ),
              );
            }).toList(),)
          ],
        ),
      ),
    );
  }
}

