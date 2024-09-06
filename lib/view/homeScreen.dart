import 'package:flutter/material.dart';
import 'package:nows_app_api/view/futuar_data.dart';
import 'package:nows_app_api/widget/appBar_RichText.dart';
import '../widget/sizdBox_ListView.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const RachTextSpan(),
      ),
      body: const Column(
        children: [
          const SizdBox_ListView(),
          const SizedBox(
            height: 5,
          ),
          FutuarData(category: "general")
        ],
      ),
    );
  }
}
