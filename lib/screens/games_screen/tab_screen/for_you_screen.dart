import 'package:flutter/material.dart';
import 'package:outcaster3rd_pro/models/models.dart';

class ForYouScreen extends StatefulWidget {
  const ForYouScreen({Key? key}) : super(key: key);

  @override
  State<ForYouScreen> createState() => _ForYouScreenState();
}

class _ForYouScreenState extends State<ForYouScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Recommended for you',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.arrow_forward_rounded),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 175,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                       onTap: (){
                    Navigator.of(context).pushNamed('detailsScreen',arguments: forYouData[i]);
                  },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('${forYouData[i].img}'),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              '${forYouData[i].name}',
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          Text(
                            '${forYouData[i].rate}⭐',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, i) {
                    return const SizedBox(
                      width: 15,
                    );
                  },
                  itemCount: 5,
                ),
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'New & updated',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.arrow_forward_rounded),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 175,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                       onTap: (){
                    Navigator.of(context).pushNamed('detailsScreen',arguments: forYouData[i]);
                  },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('${forYouData[i+5].img}'),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              '${forYouData[i+5].name}',
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          Text(
                            '${forYouData[i+5].rate}⭐',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, i) {
                    return const SizedBox(
                      width: 15,
                    );
                  },
                  itemCount: 5,
                ),
              ),
        
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Suggested for you',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.arrow_forward_rounded),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 175,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                       onTap: (){
                    Navigator.of(context).pushNamed('detailsScreen',arguments: forYouData[i]);
                  },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('${forYouData[i+9].img}'),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              '${forYouData[i+9].name}',
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          Text(
                            '${forYouData[i+9].rate}⭐',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, i) {
                    return const SizedBox(
                      width: 15,
                    );
                  },
                  itemCount: 5,
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
