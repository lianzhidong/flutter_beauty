/*
 * @Description: 
 * @Version: 2.0
 * @Autor: Lianzhidong
 * @Date: 2021-06-07 22:08:42
 * @LastEditors: Lianzhidong
 * @LastEditTime: 2021-06-07 22:35:17
 */
import 'package:beauty/base_card.dart';
import 'package:flutter/material.dart';

class CardShare extends BaseCard {
  @override
  _CardShareState createState() => _CardShareState();
}

class _CardShareState extends BaseCardState {
  @override
  topTitle(String title) {
    return super.topTitle('分享得联名卡');
  }

  @override
  Widget subTitle(String title) {
    return super.subTitle('分享给朋友最多获得12天无限卡');
  }

  @override
  Widget topTitle2() {
    return Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: Text(
          '/第19期',
          style: TextStyle(fontSize: 10),
        ));
  }

  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(
        child: Container(
      decoration: BoxDecoration(color: Color(0xfff6f7f9)),
      margin: EdgeInsets.only(top: 20),
      child: Column(
        //水平向右
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(top: 20, left: 15, bottom: 20),
            child: Image.network(
              'http://www.devio.org/io/flutter_beauty/card_list.png',
              //宽高充满容器
              fit: BoxFit.cover,
            ),
          )),
          Container(
            alignment: AlignmentDirectional.center,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: bottomTitle('123443325人·参与活动'),
            ),
          )
        ],
      ),
    ));
  }
}
