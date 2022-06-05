import 'package:flutter/material.dart';
import 'package:outcaster3rd_pro/models/models.dart';

class EditiorChoiceScreen extends StatefulWidget {
  const EditiorChoiceScreen({Key? key}) : super(key: key);

  @override
  State<EditiorChoiceScreen> createState() => _EditiorChoiceScreenState();
}

class _EditiorChoiceScreenState extends State<EditiorChoiceScreen> {
  @override
  Widget build(BuildContext context) {
    var editChoiceDate;
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, i) {
            return ListTile(
              leading: Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage('${editChoiceData[i].img}'),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
              title: Text('${editChoiceData[i].name}'),
            );
          },
          separatorBuilder: (context, i) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: editChoiceData.length),
    );
  }
}
