import 'package:counter_7/model/mywatchlist.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../page/form.dart';
import '../page/result.dart';
import '../page/myWatchlist.dart';
import '../model/budget.dart';
import '../model/mywatchlist.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('Counter_7'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyFormPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              // Route menu ke halaman result
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ResultPage()),
              );
            },
          ),
          ListTile(
            title: const Text('My Watchlist'),
            onTap: () {
              // Route menu ke halaman myWatchlist
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyWatchlistPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
