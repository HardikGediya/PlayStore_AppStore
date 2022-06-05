import 'package:flutter/material.dart';
import 'package:outcaster3rd_pro/models/models.dart';

class TopChartsScreen extends StatefulWidget {
  const TopChartsScreen({Key? key}) : super(key: key);

  @override
  State<TopChartsScreen> createState() => _TopChartsScreenState();
}

class _TopChartsScreenState extends State<TopChartsScreen> {
  bool isoff = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Show installed apps'),
                  Switch(
                      value: isoff,
                      onChanged: (val) {
                        setState(() {
                          val = isoff;
                        });
                      }),
                ],
              ),
              SizedBox(
                height: 35,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text('${topData[i]}'),
                        alignment: Alignment.center,
                      );
                    },
                    separatorBuilder: (context, i) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: topData.length),
              ),
              SizedBox(
                height: 550,
                child: ListView.separated(
                  itemBuilder: (context, i) {
                    return ListTile(
                      leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage('${forYouData[i].img}'),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      title: Text('${forYouData[i].name}'),
                      subtitle: Text('${forYouData[i].rate}'),
                    );
                  },
                  separatorBuilder: (context, i) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: forYouData.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
