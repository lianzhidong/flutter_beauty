/*
 * @Description: 长安十二时辰
 * @Version: 2.0
 * @Autor: Lianzhidong
 * @Date: 2021-06-08 21:51:53
 * @LastEditors: Lianzhidong
 * @LastEditTime: 2021-06-08 22:24:19
 */
import 'package:beauty/base_card.dart';
import 'package:flutter/material.dart';

class CardSpecial extends BaseCard {
  @override
  BaseCardState createState() => _CardSpecialState();
}

class _CardSpecialState extends BaseCardState {
  @override
  void initState() {
    bottomTitleColor = Colors.blue;
    super.initState();
  }

  @override
  topContent() {
    // TODO: implement topContent
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 66, right: 66, top: 30, bottom: 30),
          decoration: BoxDecoration(color: Color(0xfffffcf7)),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              //图片底部阴影效果
              BoxShadow(
                  color: Colors.grey, blurRadius: 20, offset: Offset(0, 10))
            ]),
            child: Image.network(
                'http://www.devio.org/io/flutter_beauty/changan_book.jpg'),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, top: 15, bottom: 15, right: 20),
          decoration: BoxDecoration(color: Color(0xfff7f3ea)),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '长安十二时辰...',
                    style: TextStyle(fontSize: 18, color: Color(0xff473b25)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      '马伯庸',
                      style: TextStyle(fontSize: 13, color: Color(0xff7d725c)),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.only(left: 10, right: 8, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors: [Color(0xffd9bc82), Color(0xffecd9ae)])),
                child: Text(
                  '分享免费领',
                  style: TextStyle(color: Color(0xff4f3b1a), fontSize: 13),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  bottomContent() {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch, //水平撑开
      mainAxisAlignment: MainAxisAlignment.spaceAround, //均匀分布
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'http://www.devio.org/io/flutter_beauty/double_quotes.jpg',
                height: 26,
                width: 26,
              ),
              Text('揭露历史真相')
            ],
          ),
        ),
        bottomTitle('更多免费好书领不停 >')
      ],
    ));
  }
}
