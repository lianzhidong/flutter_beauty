/*
 * @Description: 
 * @Version: 2.0
 * @Autor: Lianzhidong
 * @Date: 2021-06-07 21:00:57
 * @LastEditors: Lianzhidong
 * @LastEditTime: 2021-06-08 22:26:44
 */
import 'package:flutter/material.dart';

//卡片基类
class BaseCard extends StatefulWidget {
  // const BaseCard({Key? key}) : super(key: key);

  @override
  BaseCardState createState() => BaseCardState();
}

class BaseCardState extends State<BaseCard> {
  Color subTitleColor = Colors.grey;
  Color bottomTitleColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [topContent(), bottomContent()],
        ),
      ),
    );
  }

  topContent() {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 40),
      child: Column(
        //子标题左对齐
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            //小标题居下对齐
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [topTitle('title1'), topTitle2()],
          ),
          subTitle('title2')
        ],
      ),
    );
  }

  bottomContent() {
    return Container();
  }

  Widget subTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Text(
        title,
        style: TextStyle(color: subTitleColor, fontSize: 11),
      ),
    );
  }

  Widget topTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 22),
    );
  }

  topTitle2() {
    return Container();
  }

  bottomTitle(String title) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 12, color: bottomTitleColor),
    );
  }
}
