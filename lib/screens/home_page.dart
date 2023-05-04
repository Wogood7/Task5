import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/Numbers.dart';
import 'package:language_learning_app/screens/family_members.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Language Learning APP'),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text('Your Way to learn japaness',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              
              }
              )
              );
            },
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 24),
              color: Colors.orange,
              height: 65,
              width: double.infinity,
              child: Text(
                'Numbers',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembers();
              
              }
              )
              );
                
            },
                  
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 24),
              color: Colors.green,
              height: 65,
              width: double.infinity,
              child: Text(
                'Family Members',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 24),
              color: Colors.purple,
              height: 65,
              width: double.infinity,
              child: Text(
                'Colors',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
