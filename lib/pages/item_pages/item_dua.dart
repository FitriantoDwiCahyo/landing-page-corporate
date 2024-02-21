import 'package:flutter/material.dart';
import 'package:landing_page_corporate/pages/item_list.dart';
import 'package:landing_page_corporate/theme/color/app_color.dart';
import 'package:landing_page_corporate/theme/typography/text_paragraph.dart';

import '../../theme/typography/text_heading_empat.dart';
import '../../theme/typography/text_heading_tiga.dart';

class ItemDua extends StatelessWidget {
  const ItemDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 140),
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColor.primaryElement,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Center(
                  child: TextHeadingTiga(text: 'Services'),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                width: 600,
                child: const TextParagraph(
                    text:
                        'At our digital marketing agency, we offer a range of services to help businesses grow and succeed online. These services include:',
                    color: AppColor.primaryTextColor),
              )
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            height: 1000,
            child: GridView.count(
              childAspectRatio: 2,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 2,
              children: List.generate(
                4,
                (index) {
                  return Container(
                    padding: const EdgeInsets.all(52),
                    decoration: BoxDecoration(
                      color: AppColor.primaryElement,
                      borderRadius: BorderRadius.circular(45),
                      // border: Border.all(color: AppColor.secondaryElement)
                      border: const Border(
                        right: BorderSide(color: AppColor.secondaryElement),
                        top: BorderSide(color: AppColor.secondaryElement),
                        left: BorderSide(color: AppColor.secondaryElement),
                        bottom: BorderSide(color: AppColor.secondaryElement,width: 5),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColor.treeElement,
                          ),
                          child: const TextHeadingEmpat(
                              text: 'Search engine\noptimization'),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColor.secondaryElement,
                              child: Image.asset(ItemList().iconName[0]),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const TextParagraph(
                                text: 'Learn more',
                                color: AppColor.primaryTextColor)
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
