import 'package:flutter/material.dart';
import 'package:nows_app_api/models/list_category.dart';

import '../view/categoresBage.dart';

class SizdBox_ListView extends StatelessWidget {
  const SizdBox_ListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: list_Category.length,
          itemBuilder: (context, index) {
            final category = list_Category[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoresBage(
                            category: category.title,
                          )),
                );
              },
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                height: 190,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(category.image.toString()),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black45),
                  child: Text(
                    category.title.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
