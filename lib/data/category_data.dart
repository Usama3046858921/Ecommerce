



import '../objects/CategoryProductModel.dart';
import '../objects/SingleProductModel.dart';

List<SingleProductModel> categoryShoesData = [
  SingleProductModel(
      productImage:
      'http://t2.gstatic.com/images?q=tbn:ANd9GcRgQ9pUetvljUW4rTdPsNGH38OzjX1WWAaNSpfSN2PSrk3PYFig',
      productModel: 'Men Cross Training',
      productName: 'Nano x1 lux',
      productOldPrice: 180,
      productPrice: 150,
      productFourImage:
      'data:image/jpeg;base64,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',
      productSecondImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/0a602c2ee13e4c17ae86acfd0076b6fb_9366/Nano_X1_Lux_Shoes_White_FZ1418_52_standard.jpg',
      productThirdImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/0282a9bac41d4619bae1acfd007670cb_9366/Nano_X1_Lux_Shoes_White_FZ1418_03_standard.jpg'),
  SingleProductModel(
      productImage:
      'http://t2.gstatic.com/images?q=tbn:ANd9GcRgQ9pUetvljUW4rTdPsNGH38OzjX1WWAaNSpfSN2PSrk3PYFig',
      productModel: 'Classic',
      productName: 'Classic leather legancy shoes',
      productOldPrice: 100,
      productPrice: 80,
      productFourImage:
      'https://media.endclothing.com/media/f_auto,w_600,h_600/prodmedia/media/catalog/product/0/9/09-03-2021_GH_FY7557_1_1.jpg',
      productSecondImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/27c16fdb325c4bddb76fac67014906ca_9366/Classic_Leather_Legacy_Shoes_Blue_FY7557_04_standard.jpg',
      productThirdImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/c56ae3bff21c4087a0e1acd900e8eb70_9366/Classic_Leather_Legacy_Shoes_Blue_FZ2905_03_standard.jpg'),
  SingleProductModel(
      productImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/6d0688179e6d4f0aa19dab57017ca41d_9366/Reebok_Nano_X_Shoes_Blue_FW8473_01_standard.jpg',
      productModel: 'Men Cross training',
      productName: 'Reebok nano x shoes',
      productOldPrice: 150,
      productPrice: 130,
      productFourImage:
      'https://bengarves.com/wp-content/uploads/2020/01/ef7298_flt_ecom.jpg',
      productSecondImage:
      'https://i2.wp.com/bengarves.com/wp-content/uploads/2020/01/ef7298_blt_ecom.jpg',
      productThirdImage:
      'https://i2.wp.com/bengarves.com/wp-content/uploads/2020/01/ef7298_tpp_ecom.jpg?resize=850%2C850&ssl=1'),
];
List<SingleProductModel> categoryAccessoriesData = [
  SingleProductModel(
      productImage:
      'https://i.pinimg.com/originals/aa/c0/5f/aac05f35fbbd0c0cb176c2953c25ee78.png',
      productModel: 'LifeStyle',
      productName: 'Face covers xs/s 3 pack',
      productOldPrice: 40,
      productPrice: 20,
      productFourImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/28ad64fa0e624ae4807eabb300a9d51f_9366/Face_Covers_M-L_3-Pack_Black_H18222_03_standard_hover.jpg',
      productSecondImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/5d966e8e90b3438a9041abb300aa019e_9366/Face_Covers_M-L_3-Pack_Black_H18222_02_standard.jpg',
      productThirdImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/e6d4f7d53fdf4382bf04abb300aa371d_9366/Face_Covers_M-L_3-Pack_Black_H18222_14_standard.jpg'),
  SingleProductModel(
      productImage:
      'https://i.pinimg.com/originals/aa/c0/5f/aac05f35fbbd0c0cb176c2953c25ee78.png',
      productModel: 'Men training',
      productName: 'Low cut basic socks six pack',
      productOldPrice: 40,
      productPrice: 20,
      productFourImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/5375944b44884d0d8148ab22014141bf_9366/Delta_Low-Cut_Basic_Socks_Six_Pack_Multi_EW1849.jpg',
      productSecondImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/f9d83abb292a44b285f3ab22013aa7be_9366/Delta_Low-Cut_Basic_Socks_Six_Pack_Multi_EW1849_01_standard.jpg',
      productThirdImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/5c711deb98a4480d9dc3a6d6002075ea_9366/Classics_Lost_and_Found_Socks_White_BQ2224_01_standard.jpg'),
  SingleProductModel(
      productImage:
      'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/33311a78deca4628a115abc9008e8034_9366/Training_Weave_Backpack_Black_GD0696_01_standard.jpg',
      productModel: 'Training',
      productName: 'Training weave backpack',
      productOldPrice: 200,
      productPrice: 150,
      productFourImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/1fc379faa6b0473e8516ac8a010031b5_9366/Training_Weave_Backpack_Black_GT7686_04_standard.jpg',
      productSecondImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/44df69de09e24e5db910abc100f3f30a_9366/Training_Weave_Backpack_Yellow_GH0037_04_standard.jpg',
      productThirdImage:
      'https://produkty.lionsport.cz/produkty_images/600/gh0099/gh0099.jpg'),
];
List<SingleProductModel> categoryClothData = [
  SingleProductModel(
      productImage:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNzlmQojw0tqNKQx7GBiQhFj18-rOg5weHhQ&usqp=CAU',
      productModel: 'Shirt',
      productName: 'Garment Dyed ',
      productOldPrice: 140,
      productPrice: 100,
      productFourImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/e03d1d3013834edcb7faac48003d04d0_9366/Reebok_Classics_Natural_Dye_Crew_Sweatshirt_Grey_GP7891.jpg',
      productSecondImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/38824fe5bbf34f42843bac1701667bf6_9366/Reebok_Classics_Natural_Dye_Crew_Sweatshirt_Grey_GP7891_15_standard.jpg',
      productThirdImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/abcddc86386d41be92a9ac48003e7dd4_9366/Reebok_Classics_Natural_Dye_Crew_Sweatshirt_Grey_GP7891_03_standard_hover.jpg'),
  SingleProductModel(
      productImage:
      'https://assets.adidas.com/images/w_600,f_auto,q_auto/57d461193168475e8eecab4501127ab6_9366/Falcon_Shoes_Pink_FX7196_01_standard.jpg',
      productModel: 'Swimsuits',
      productName: 'Crop Swim Top',
      productOldPrice: 99,
      productPrice: 80,
      productFourImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/0a1c1783bbc44829b58eab45000a4a62_9366/Reebok_Raw_Champ_One_Piece_Swim_Suit_Multi_EW5775.jpg',
      productSecondImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/db8dd6ab4d1e4b07b327ab45000a802f_9366/Reebok_Raw_Champ_One_Piece_Swim_Suit_Multi_EW5775_03_standard_hover.jpg',
      productThirdImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/d6d923c69f5a4afd9209ab3c0127db3e_9366/Reebok_Raw_Champ_One_Piece_Swim_Suit_Multi_EW5775_15_standard.jpg'),
  SingleProductModel(
      productImage:
      'https://assets.adidas.com/images/w_600,f_auto,q_auto/57d461193168475e8eecab4501127ab6_9366/Falcon_Shoes_Pink_FX7196_01_standard.jpg',
      productModel: 'T-Shirt',
      productName: 'Cotton Jersey',
      productOldPrice: 80,
      productPrice: 30,
      productFourImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/daf311f0099a4aa0acdeac8400ed1838_9366/Vector_Cotton_T-Shirt_Black_GL2598.jpg',
      productSecondImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/18ca8f31f6ab4e4c812fac8400ed1fc7_9366/Vector_Cotton_T-Shirt_Black_GL2598_05_detail.jpg',
      productThirdImage:
      'https://assets.reebok.com/images/w_600,f_auto,q_auto/daf311f0099a4aa0acdeac8400ed1838_9366/Vector_Cotton_T-Shirt_Black_GL2598.jpg'),
];
///////////////CategoryMenTabBarData..
List<CategoryProductModel> menCategoryData = [
  CategoryProductModel(
    productImage:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNzlmQojw0tqNKQx7GBiQhFj18-rOg5weHhQ&usqp=CAU',
    productModel: '5,340 items',
    productName: 'Clothing',
  ),
  CategoryProductModel(
    productImage:
    'https://assets.adidas.com/images/w_600,f_auto,q_auto/57d461193168475e8eecab4501127ab6_9366/Falcon_Shoes_Pink_FX7196_01_standard.jpg',
    productModel: '1,232 items',
    productName: 'Shoes',
  ),
  CategoryProductModel(
    productImage:
    'https://www.garmin.com.my/m/my/g/products/venu-sq-music-white-cf-lg.jpg',
    productModel: '5,340 items',
    productName: 'Accessories',
  ),
  CategoryProductModel(
    productImage:
    'https://cdn.shopify.com/s/files/1/2534/3568/products/41WKRmcS3zL_600x600.jpg?v=1554317343',
    productModel: '1,232 items',
    productName: 'Back-Packs',
  ),
  CategoryProductModel(
    productImage:
    'https://cdna.lystit.com/photos/amazon/df3ae8be/kangol-Mandarin-Tropic-Casual.jpeg',
    productModel: '5,340 items',
    productName: 'Hats',
  ),
];
//////// for women
List<CategoryProductModel> womenCategoryData = [
  CategoryProductModel(
    productImage:
    'https://i.pinimg.com/originals/aa/c0/5f/aac05f35fbbd0c0cb176c2953c25ee78.png',
    productModel: '5,340 items',
    productName: 'Clothing',
  ),
  CategoryProductModel(
    productImage:
    'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-4938542/reebok_reebok_men_royal_complete2_se_shoes_-ree10-fu7844-_full03_rddiygzg.jpg',
    productModel: '1,232 items',
    productName: 'Shoes',
  ),
  CategoryProductModel(
    productImage:
    'https://www.garmin.com.my/m/my/g/products/venu-sq-music-white-cf-lg.jpg',
    productModel: '5,340 items',
    productName: 'Accessories',
  ),
  CategoryProductModel(
    productImage:
    'https://cdn.shopify.com/s/files/1/2534/3568/products/41WKRmcS3zL_600x600.jpg?v=1554317343',
    productModel: '1,232 items',
    productName: 'Back-Packs',
  ),
  CategoryProductModel(
    productImage:
    'https://cdna.lystit.com/photos/amazon/df3ae8be/kangol-Mandarin-Tropic-Casual.jpeg',
    productModel: '5,340 items',
    productName: 'Hats',
  ),
];
List<CategoryProductModel> forKids = [
  CategoryProductModel(
    productImage:
    'https://image.freepik.com/free-photo/happy-latin-child_58409-10877.jpg',
    productModel: '5,340 items',
    productName: 'Clothing',
  ),
  CategoryProductModel(
    productImage:
    'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//98/MTA-4938542/reebok_reebok_men_royal_complete2_se_shoes_-ree10-fu7844-_full03_rddiygzg.jpg',
    productModel: '1,232 items',
    productName: 'Shoes',
  ),
  CategoryProductModel(
    productImage:
    'https://www.garmin.com.my/m/my/g/products/venu-sq-music-white-cf-lg.jpg',
    productModel: '5,340 items',
    productName: 'Accessories',
  ),
  CategoryProductModel(
    productImage:
    'https://cdn.shopify.com/s/files/1/2534/3568/products/41WKRmcS3zL_600x600.jpg?v=1554317343',
    productModel: '1,232 items',
    productName: 'Back-Packs',
  ),
  CategoryProductModel(
    productImage:
    'https://cdna.lystit.com/photos/amazon/df3ae8be/kangol-Mandarin-Tropic-Casual.jpeg',
    productModel: '5,340 items',
    productName: 'Hats',
  ),
];
