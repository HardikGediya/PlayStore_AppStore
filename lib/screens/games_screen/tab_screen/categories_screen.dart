import 'package:flutter/material.dart';
import 'package:outcaster3rd_pro/models/models.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, i) {
            return ListTile(
              title: Text('${catData[i].name}'),
            );
          },
          separatorBuilder: (context, i) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: catData.length),
    );
  }
}
