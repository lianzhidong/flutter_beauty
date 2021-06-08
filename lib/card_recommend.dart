/*
 * @Description: 
 * @Version: 2.0
 * @Autor: Lianzhidong
 * @Date: 2021-06-07 21:03:26
 * @LastEditors: Lianzhidong
 * @LastEditTime: 2021-06-07 22:36:17
 */
import 'dart:ffi';

import 'package:beauty/base_card.dart';
import 'package:flutter/material.dart';

//本周推荐
class CardRecommend extends BaseCard {
  @override
  _CardRecommendState createState() => _CardRecommendState();
}

class _CardRecommendState extends BaseCardState {
  @override
  void initState() {
    subTitleColor = Color(0xffb99444);
    super.initState();
  }

  @override
  topTitle(String title) {
    return super.topTitle('本周推荐');
  }

  @override
  subTitle(String title) {
    return super.subTitle('送你一天无限卡·全场书籍免费读>');
  }

  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(
        child: Container(
      constraints: BoxConstraints.expand(),
      margin: EdgeInsets.only(top: 20),
      child: Image.network(
        'http://www.devio.org/io/flutter_beauty/card_1.jpg',
        //宽高充满容器
        fit: BoxFit.cover,
      ),
    ));
  }
}
