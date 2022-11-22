import 'package:counter_7/main.dart';
import 'package:counter_7/util/future.dart';
import 'package:counter_7/page/detailWatchlist.dart';
import 'package:flutter/material.dart';
import 'form.dart';
import '../util/drawer.dart';
import '../model/budget.dart';
import '../model/mywatchlist.dart';

class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({super.key});

  @override
  State<MyWatchlistPage> createState() => _MyWatchlistPageState();
}

class _MyWatchlistPageState extends State<MyWatchlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Watchlist'),
        ),
        // Menambahkan drawer menu
        drawer: MyDrawer(),
        body: FutureBuilder(
            future: fetchMyWatchlist(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada to watchlist :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  List<MyWatchlist> watchList = snapshot.data!;
                  return ListView.builder(
                    itemCount: watchList.length,
                    itemBuilder: (context, index) {
                      MyWatchlist myWatchlist = watchList[index];

                      return Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 5),
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(
                                color: myWatchlist.fields.watched
                                    ? Colors.green
                                    : Colors.grey,
                                width: 2),
                          ),
                          child: ListTile(
                            title: Text(myWatchlist.fields.title),
                            trailing: Checkbox(
                                value: myWatchlist.fields.watched,
                                onChanged: (bool? value) {
                                  setState(() {
                                    myWatchlist.fields.watched = value!;
                                  });
                                }),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailWatchlist(
                                        watchlist: myWatchlist)),
                              );
                            },
                          ));
                    },
                  );
                }
              }
            }));
  }
}
