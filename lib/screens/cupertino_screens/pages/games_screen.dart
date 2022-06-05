import 'package:flutter/material.dart';
import 'package:outcaster3rd_pro/models/cupertino_models.dart';
import 'package:outcaster3rd_pro/models/models.dart';

import '../../../utils/textstyle.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({Key? key}) : super(key: key);

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Games',
                  style: heading,
                ),
                const CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdT3Unpze4ar-eeeDlLAT7CmUCMogowzz5KA&usqp=CAU',
                  ),
                ),
              ],
            ),
            Divider(),
            Text(
              'Wahammer AoS: Realm War',
              style: mainText,
            ),
            Text(
              'Compete in thrilling battles',
              style: normalText,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage('${todayImg[i]}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, i) {
                  return const SizedBox(
                    width: 20,
                  );
                },
                itemCount: todayImg.length,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discover AR Gaming',
                  style: mainText,
                ),
                const Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 300,
              child: ListView.separated(
                  itemBuilder: (context,i){
                    return Row(
                      children: [
                        Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage('${forYouData[i].img}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    SizedBox(width: 20),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Kings of Pool'),
                        Text('Ultimate AR Pool'),
                        SizedBox(height: 20,),
                        Container(
                          height: 20,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text('GET'),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                      ],
                      
                    );
                  },
                  separatorBuilder: (context,i){
                    return const SizedBox(height: 20);
                  },
                  itemCount: 5),
            ),
          ],
        ),
      ),
    );
  }
}
