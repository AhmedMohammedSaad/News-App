import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:nows_app_api/models/model.dart';

import '../models/data.dart';
import '../widget/listvew_Body.dart';

class FutuarData extends StatefulWidget {
  const FutuarData({super.key, required this.category});
  final String category;

  @override
  State<FutuarData> createState() => _FutuarDataState();
}

class _FutuarDataState extends State<FutuarData> {
  var futur;

  void initState() {
    futur = News(dio: Dio()).getrespons(widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articles>>(
      future: futur,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print(snapshot);
          return ListVew_Body(
            arctecalesList: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return Text("OOPS theis is Error ");
        }
        return const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(
                height: 15,
              ),
              Text(
                "👀اصبر الداتا بتحمل",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      },
    );
  }
}
