import 'package:landing_page_corporate/pages/item_pages/item_dua.dart';
import 'package:landing_page_corporate/pages/item_pages/item_satu.dart';
//
class ItemList{
  final List itemContainer = [
    const ItemSatu(),
    const ItemDua(),
  ];

  final List<String> imageName = [
    'assets/images/company_satu.png',
    'assets/images/company_dua.png',
    'assets/images/company_tiga.png',
    'assets/images/company_empat.png',
    'assets/images/company_lima.png',
    'assets/images/company_enam.png',
    
  ];

  final List<String> iconName = [
    'assets/icons/arrow.png',

  ];
}