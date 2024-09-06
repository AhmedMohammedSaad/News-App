import 'package:flutter/material.dart';
import 'package:nows_app_api/widget/nowsItem.dart';

import '../models/model.dart';

class ListVew_Body extends StatelessWidget {
  const ListVew_Body({
    super.key,
    required this.arctecalesList,
  });
  final List<Articles> arctecalesList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: arctecalesList.length,
        itemBuilder: (context, index) => Nows_Item(
          articles: arctecalesList[index],
        ),
      ),
    );
  }
}
