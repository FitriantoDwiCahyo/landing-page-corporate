import 'package:flutter/material.dart';
import 'package:landing_page_corporate/pages/item_list.dart';
import 'package:landing_page_corporate/theme/color/app_color.dart';
import 'package:landing_page_corporate/theme/typography/text_heading_dua.dart';
import 'package:landing_page_corporate/theme/typography/text_heading_empat.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AutoScrollController _scrollController;

  @override
  void initState() {
    _scrollController = AutoScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebSmoothScroll(
        controller: _scrollController,
        child: CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              pinned: true,
              backgroundColor: AppColor.primaryBg,
              // expandedHeight: 100,
              toolbarHeight: 100,
              surfaceTintColor: AppColor.primaryBg,
              flexibleSpace: Container(
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                child: Row(
                  children: [
                    Expanded(child: TextHeadingDua(text: 'Brand')),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            _scrollController.scrollToIndex(0,
                                preferPosition: AutoScrollPosition.begin);
                          },
                          child: const TextHeadingEmpat(text: 'About'),
                        ),
                        TextButton(
                          onPressed: () {
                            _scrollController.scrollToIndex(1,
                                preferPosition: AutoScrollPosition.begin);
                          },
                          child: const TextHeadingEmpat(text: 'Services'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const TextHeadingEmpat(text: 'Blog'),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.all(12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          onPressed: () {},
                          child: const TextHeadingEmpat(text: 'Contact us'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverList.builder(
              itemBuilder: (context, index) {
                return AutoScrollTag(
                  controller: _scrollController,
                  key: ValueKey(index),
                  index: index,
                    child: ItemList().itemContainer[index]
                  
                );
              },
              itemCount: ItemList().itemContainer.length,
            )
          ],
        ),
      ),
    );
  }
}
