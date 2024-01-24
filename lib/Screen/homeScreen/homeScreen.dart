import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:greenworms/Screen/homeScreen/components/HPrimaryCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexNum = 0;
  List tabWidgets =[
    Text(
      "Home",
      style: TextStyle(fontSize:20),
    ),
     Text(
      "Job",
      style: TextStyle(fontSize:20),
    ),
     Text(
      "Expense",
      style: TextStyle(fontSize:20),
    ),
     Text(
      "Profile",
      style: TextStyle(fontSize:20),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [InkWell(onTap: () {}, child: HPrimaryCard())],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar

      (items:const [
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/image/home.png")),
        label: "Home",
        backgroundColor: Colors.white),
        
        BottomNavigationBarItem(
          icon:ImageIcon(AssetImage("assets/image/jobbot.png")),
          
        label: "Job",
        backgroundColor: Colors.white),
        
        BottomNavigationBarItem(
          icon:ImageIcon(AssetImage("assets/image/expense.png")), 
        label: "Expense",
        backgroundColor: Colors.white),

        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/image/profile.png")),
        label: "Profile",
        backgroundColor: Colors.white),
        ],
        iconSize:40,
        selectedFontSize: 25,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: indexNum,
        onTap: (int index){
          setState((){
            indexNum = index;
          });

        }
        
        
        
        ),
       
    ));
  }
}
