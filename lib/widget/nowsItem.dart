import 'package:flutter/material.dart';

import '../models/model.dart';

// ignore: must_be_immutable
class Nows_Item extends StatelessWidget {
  Nows_Item({
    super.key,
    required this.articles,
  });
  Articles articles;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Nows()),
              // );
            },
            child: Container(
              margin: const EdgeInsetsDirectional.symmetric(
                  vertical: 5, horizontal: 8),
              height: 210,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(articles.urlToImage!),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding:
                EdgeInsetsDirectional.symmetric(vertical: 5, horizontal: 10),
            child: Text(
              articles.title!,
              style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding:
                EdgeInsetsDirectional.symmetric(vertical: 5, horizontal: 10),
            child: Text(
              articles.content!,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
