import 'package:flutter/material.dart';
import 'package:nows_app_api/view/futuar_data.dart';

class CategoresBage extends StatelessWidget {
  const CategoresBage({
    super.key,
    required this.category,
  });
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutuarData(category: category),
    );
  }
}
