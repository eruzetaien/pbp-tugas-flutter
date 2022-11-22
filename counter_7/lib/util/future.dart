import 'package:flutter/material.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:url_launcher/url_launcher.dart';
import '../main.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';

Future<List<MyWatchlist>> fetchMyWatchlist() async {
  var url = Uri.parse('https://heshturia.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object MyWatchlist
  List<MyWatchlist> listMyWatchlist = [];
  for (var d in data) {
    if (d != null) {
      listMyWatchlist.add(MyWatchlist.fromJson(d));
    }
  }
  return listMyWatchlist;
}

Future openUrlinApp({
  required String url,
}) async {
  Uri formattedUrl = Uri.parse(url);
  if (await canLaunchUrl(formattedUrl)) {
    await launchUrl(
      formattedUrl,
      mode: LaunchMode.inAppWebView,
    );
  }
}
