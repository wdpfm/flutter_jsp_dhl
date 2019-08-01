import 'package:flutter/material.dart';
import 'package:flutter_jsp_dhl/pages/home.dart';
import 'pages/home.dart';
import 'pages/Screen1.dart';
import 'pages/Screen2.dart';
import 'pages/Screen3.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor=Colors.lightBlueAccent;
  int _currentIndex=0;
  List<Widget> list=List();
  @override
  void initState(){
    list..add(Home())
        ..add(Screen1())
        ..add(Screen2())
        ..add(Screen3());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _BottomNavigationColor,
              ),
              title: Text(
                '1页',
                style: TextStyle(
                  color: _BottomNavigationColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.check_box_outline_blank,
                color: _BottomNavigationColor,
              ),
              title: Text(
                '2页',
                style: TextStyle(
                  color: _BottomNavigationColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.check_box_outline_blank,
                color: _BottomNavigationColor,
              ),
              title: Text(
                '3页',
                style: TextStyle(
                  color: _BottomNavigationColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.check_box_outline_blank,
                color: _BottomNavigationColor,
              ),
              title: Text(
                '4页',
                style: TextStyle(
                  color: _BottomNavigationColor,
                ),
              ),
            ),
          ],
        currentIndex: _currentIndex,
        onTap: (int index){
            setState(() {
              _currentIndex=index;
            });
        },
      ),
    );
  }
}
