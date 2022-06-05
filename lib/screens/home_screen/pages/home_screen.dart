import 'package:flutter/material.dart';
import 'package:outcaster3rd_pro/screens/games_screen/pages/game_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int _selectedIndex = 0;  
  static const List<Widget> _widgetOptions = <Widget>[  
    GameScreen(), 
    Text('App Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('Movie Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('Books Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
  ];  
  
  void _onItemTapped(int index) {  
    setState(() {  
      _selectedIndex = index;  
    });  
  }
  @override
  Widget build(BuildContext context) {  
    return Scaffold(   
      body: Center(  
        child: _widgetOptions.elementAt(_selectedIndex),  
      ),  
      bottomNavigationBar: BottomNavigationBar(  
        items: const <BottomNavigationBarItem>[  
          BottomNavigationBarItem(  
            icon: Icon(Icons.videogame_asset_outlined),
            label : "Games", 
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.apps), 
            label : "Apps", 
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.local_movies_outlined),
            label : "Movies & TV", 
          ), 
           BottomNavigationBarItem(  
            icon: Icon(Icons.book_outlined),
            label : "Books",  
          ),   
        ],   
        currentIndex: _selectedIndex,  
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,  
        onTap: _onItemTapped,  
        elevation: 5  
      ),  
    );  
  }  
} 