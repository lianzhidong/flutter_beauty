/*
 * @Description: 
 * @Version: 2.0
 * @Autor: Lianzhidong
 * @Date: 2021-06-02 17:17:30
 * @LastEditors: Lianzhidong
 * @LastEditTime: 2021-06-06 19:52:54
 */
import 'package:beauty/content_pager.dart';
import 'package:flutter/material.dart';

//底部导航框架搭建
class TabNavigator extends StatefulWidget {
  // const TabNavigator({Key? key}) : super(key: key);

  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;

  //当前选择的
  int _currentIndex = 0;

  final ContentPagerController _contentPagerController =
      ContentPagerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffedeef0), Color(0xffe6e7e9)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: ContentPager(
          contentPagerController: _contentPagerController,
          onPageChanged: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          //控制内容区域到指定位置
          _contentPagerController.jumpToPage(index);
          //修改状态
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          _bottomIitem('本周', Icons.folder, 0),
          _bottomIitem('分享', Icons.explore, 1),
          _bottomIitem('免费', Icons.donut_small, 2),
          _bottomIitem('长安', Icons.person, 3),
        ],
      ),
    );
  }

  //封装底部Tab
  _bottomIitem(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
        icon: Icon(icon, color: _defaultColor),
        activeIcon: Icon(
          icon,
          color: _activeColor,
        ),
        title: Text(title,
            style: TextStyle(
                color: _currentIndex != index ? _defaultColor : _activeColor)));
  }
}
