import 'package:get/get.dart';

import '../utils/app_colors.dart';
import '../utils/app_images.dart';

class FriutsController extends GetxController{
  RxList favoriteItemsList = [].obs;
  RxList cardItemsList = [].obs;


  // toggleIsFavorite(){
  //   isFavorite.value = !isFavorite.value;
  // }

  RxList friutsList =  [
    {
      "discount" : "30% Off",
      "rating" : "4.5",
      "productImage" : "${AppImages.appel}",
      "productName" : "Fresh Peach",
      "price" : "445 Tk",
      "offPrice" : "1500 Tk",
      "color" : AppColors.amber,
      "qty" : 0,
    },
    {
      "discount" : "30% Off",
      "rating" : "4.5",
      "productImage" : "${AppImages.appel}",
      "productName" : "Fresh Peach",
      "price" : "445 Tk",
      "offPrice" : "1500 Tk",
      "color" : AppColors.amber,
      "qty" : 0,
    },
    {
      "discount" : "30% Off",
      "rating" : "4.5",
      "productImage" : "${AppImages.appel}",
      "productName" : "Fresh Peach",
      "price" : "445 Tk",
      "offPrice" : "1500 Tk",
      "color" : AppColors.amber,
      "qty" : 1,
    },
    {
      "discount" : "30% Off",
      "rating" : "4.5",
      "productImage" : "${AppImages.appel}",
      "productName" : "Fresh Peach",
      "price" : "445 Tk",
      "offPrice" : "1500 Tk",
      "color" : AppColors.amber,
      "qty" : 0,
    },
    {
      "discount" : "30% Off",
      "rating" : "4.5",
      "productImage" : "${AppImages.appel}",
      "productName" : "Fresh Peach",
      "price" : "445 Tk",
      "offPrice" : "1500 Tk",
      "color" : AppColors.amber,
      "qty" : 0,
    },
    {
      "discount" : "30% Off",
      "rating" : "4.5",
      "productImage" : "${AppImages.appel}",
      "productName" : "Fresh Peach",
      "price" : "445 Tk",
      "offPrice" : "1500 Tk",
      "color" : AppColors.amber,
      "qty" : 0,
    },
  ].obs;
}