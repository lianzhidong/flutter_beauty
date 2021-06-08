/*
 * @Description: 
 * @Version: 2.0
 * @Autor: Lianzhidong
 * @Date: 2021-06-06 19:18:46
 * @LastEditors: Lianzhidong
 * @LastEditTime: 2021-06-08 21:55:01
 */
import 'package:beauty/card_free.dart';
import 'package:beauty/card_share.dart';
import 'package:beauty/card_special.dart';
import 'package:flutter/material.dart';
import 'package:beauty/custom_appbar.dart';
import 'package:flutter/services.dart';

import 'card_recommend.dart';

class ContentPager extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final ContentPagerController contentPagerController;
  const ContentPager({Key key, this.onPageChanged, this.contentPagerController})
      : super(key: key);
  @override
  _ContentPagerState createState() => _ContentPagerState();
}

class _ContentPagerState extends State<ContentPager> {
  //视窗比例
  PageController _pageController = PageController(viewportFraction: 0.8);
  static List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.deepOrange,
    Colors.teal
  ];

  @override
  void initState() {
    if (widget.contentPagerController != null) {
      widget.contentPagerController._pageController = _pageController;
    }
    _statusBar();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        //高度撑开，否则在Column中没有高度会报错
        Expanded(
            child: PageView(
          onPageChanged: widget.onPageChanged,
          controller: _pageController,
          children: [
            _wrapItem(CardRecommend()),
            _wrapItem(CardShare()),
            _wrapItem(CardFree()),
            _wrapItem(CardSpecial()),
          ],
        ))
      ],
    );
  }

  Widget _wrapItem(Widget widget) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: widget,
    );
  }

  // 沉浸式状态栏
  _statusBar() {
    //黑色沉浸式状态栏
    //基于SystemUiOverlayStyle.dar修改
    SystemUiOverlayStyle uiOverlayStyle = SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle());
  }
}

//内容区域控制器
class ContentPagerController {
  PageController _pageController;
  void jumpToPage(int page) {
    //dart编程技巧：安全调用
    _pageController?.jumpToPage(page);
  }
}
