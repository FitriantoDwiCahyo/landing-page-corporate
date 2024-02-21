import 'package:flutter/material.dart';
import 'package:landing_page_corporate/pages/item_list.dart';
import 'package:landing_page_corporate/theme/color/app_color.dart';
import 'package:landing_page_corporate/theme/typography/text_heading_satu.dart';
import 'package:landing_page_corporate/theme/typography/text_paragraph.dart';

class ItemSatu extends StatefulWidget {
  const ItemSatu({super.key});

  @override
  State<ItemSatu> createState() => _ItemSatuState();
}

class _ItemSatuState extends State<ItemSatu> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // startAutoScroll();
    super.initState();
  }

  void startAutoScroll() {
    // Future.delayed(Duration(seconds: 2), () {
    //   _scrollController.animateTo(
    //     _scrollController.position.maxScrollExtent,
    //     duration: Duration(seconds: 2),
    //     curve: Curves.easeInOut,
    //   );
    // });

    // _scrollController.jumpTo(_scrollController.position.maxScrollExtent);

    // startAutoScroll();

    Future.delayed(const Duration(seconds: 1), () {
      _scrollController.animateTo(_scrollController.position.maxScrollExtent,
          duration: Duration(seconds: ItemList().imageName.length * 2),
          curve: Curves.linear);
    });

    //👉 If you want infinite scrolling use the following code
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // Scroll has reached the end, reset the position to the beginning.
        _scrollController.jumpTo(_scrollController.position.minScrollExtent);
      }
      // startAutoScroll();
    });
  }

  @override
  void dispose() {
    // Pastikan untuk membebaskan sumber daya saat widget dihapus
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //  _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 200), curve: Curves.easeOut);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextHeadingSatu(
                        text: 'Navigating the digital landscape for success'),
                    const TextParagraph(
                      text:
                          'Our digital marketing agency helps businesses grow and succeed online through a range of services including SEO, PPC, social media marketing, and content creation.',
                      color: AppColor.primaryTextColor,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(24),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: AppColor.secondaryElement,
                        textStyle: const TextStyle(color: AppColor.primaryBg),
                      ),
                      onPressed: () {},
                      child: const TextParagraph(
                        text: 'Book a consultation',
                        color: AppColor.primaryBg,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/image_page_satu.png',
                width: 600,
                height: 515,
              ),
            ],
          ),
          Container(
              height: 48,
              width: double.infinity,
              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 100),
                    child: ColorFiltered(
                      colorFilter:
                          ColorFilter.mode(Colors.grey, BlendMode.modulate),
                      child: Image.asset(
                        ItemList().imageName[index],
                        width: 123,
                        height: 49,
                      ),
                    ),
                  );
                },
                itemCount: ItemList().imageName.length,
              )),
        ],
      ),
    );
  }
}
