import 'package:flutter/material.dart';
import 'package:outcaster3rd_pro/models/cupertino_models.dart';
import 'package:outcaster3rd_pro/utils/textstyle.dart';

import '../../../utils/var.dart';

class TodayScreen extends StatefulWidget {
  const TodayScreen({Key? key}) : super(key: key);

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,top:40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
               onTap: (){
              setState(() {
                  isIOS = !isIOS;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Transform.scale(scale : 0.7,child: Image.asset('assets/icons/android.png',color: Colors.green,)),
            ),
          ),
            const SizedBox(height: 10),
            Text(
              'WEDNESDAY, SEPTEMBER 12',
              style: normalText,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today',
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
            SizedBox(
              height: 750,
              child: ListView.separated(
                  itemBuilder: (context,i){
                    return Container(
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage('${todayImg[i]}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context,i){
                    return const SizedBox(height: 20,);
                  },
                  itemCount: todayImg.length,),
            ),
          ],
        ),
      ),
    );
  }
}
