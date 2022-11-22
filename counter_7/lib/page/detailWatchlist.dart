import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'form.dart';
import '../util/drawer.dart';
import '../model/budget.dart';
import '../model/mywatchlist.dart';
import '../util/future.dart';

class DetailWatchlist extends StatefulWidget {
  const DetailWatchlist({super.key, required this.watchlist});

  @override
  State<DetailWatchlist> createState() => _MyDetailPageState();

  final MyWatchlist watchlist;
}

class _MyDetailPageState extends State<DetailWatchlist> {
  @override
  Widget build(BuildContext context) {
    DateTime releaseDate =
        DateTime.parse('${widget.watchlist.fields.releaseDate}');
    String formattedDate = DateFormat('MMM d, yyyy').format(releaseDate);
    const double fontSize = 17.0;

    return Scaffold(
        appBar: AppBar(
          title: Text('Detail'),
        ),
        // Menambahkan drawer menu
        drawer: MyDrawer(),
        body: Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    widget.watchlist.fields.title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Release Date : ",
                    style: const TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(formattedDate,
                      style: const TextStyle(
                        fontSize: fontSize,
                      )),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "Rating : ",
                    style: const TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(widget.watchlist.fields.rating.toString() + " /5",
                      style: const TextStyle(
                        fontSize: fontSize,
                      )),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "Status : ",
                    style: const TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                      widget.watchlist.fields.watched
                          ? "watched"
                          : "not watched",
                      style: TextStyle(
                        color: widget.watchlist.fields.watched
                            ? Colors.green[900]
                            : Colors.black,
                        fontSize: fontSize,
                      )),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Review : ",
                style: const TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  widget.watchlist.fields.watched
                      ? Expanded(
                          child: Text(
                              widget.watchlist.fields.watched
                                  ? widget.watchlist.fields.review
                                  : "you can see other people's review ",
                              style: const TextStyle(
                                fontSize: fontSize,
                              )),
                        )
                      : Text(
                          widget.watchlist.fields.watched
                              ? widget.watchlist.fields.review
                              : "you can see other people's review ",
                          style: const TextStyle(
                            fontSize: fontSize,
                          )),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () async {
                        openUrlinApp(url: widget.watchlist.fields.review);
                      },
                      child: Text(widget.watchlist.fields.watched ? "" : "here",
                          style: const TextStyle(
                            fontSize: fontSize,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          )),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyWatchlistPage()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      child: const Text(
                        'Back',
                        style: TextStyle(
                          fontSize: fontSize,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
