  import 'package:flutter/material.dart';

  import '../../../utils/var.dart';
  import '../tab_screen/categories_screen.dart';
  import '../tab_screen/editor_choice_screen.dart';
  import '../tab_screen/for_you_screen.dart';
  import '../tab_screen/top_charts_screen.dart';

  class GameScreen extends StatefulWidget {
    const GameScreen({Key? key}) : super(key: key);

    @override
    State<GameScreen> createState() => _GameScreenState();
  }

  class _GameScreenState extends State<GameScreen> {
    @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          drawer: Drawer(
            child: Padding(
              padding: const EdgeInsets.only(top: 100,left: 0),
              child: Column(
                children: [
                  Container(
                    child: Text('Click to Change Plateform',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: InkWell(
                 onTap: (){
                setState(() {
                    isIOS = !isIOS;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Transform.scale(scale : 0.7,child: Image.asset('assets/icons/ios.png',color: Colors.green,)),
              ),
            ),
            ),
                ],
              ),
            ),
          ),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            elevation: 0,
            backgroundColor: Colors.white,
            title: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Search for apps & games',
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const[
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.mic_none_outlined, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 2,
                  ),
                ],
              ),
            ),
            bottom: const TabBar(
              indicatorWeight: 2.5,
              indicatorColor: Colors.green,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'For you',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Top charts',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                    ),
                  ),
                ),
                 Tab(
                  child: Text(
                    "Editor's Choice",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body:const TabBarView(
            children: [
              ForYouScreen(),
              TopChartsScreen(),
              CategoriesScreen(),
              EditiorChoiceScreen(),
            ],
          ),
        ),
      );
    }
  }
