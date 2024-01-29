import 'package:get/get.dart';
import 'package:restaurent_kookbags/utils/app_colors.dart';
import 'package:restaurent_kookbags/utils/app_images.dart';

class MyKookbagsController extends GetxController {
  RxList cardItemsList = [].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    addItemsToCard();
  }

  addItemsToCard() {
    cardItemsList.add({
      "name": "My Kookbags",
      "offPrice": "1800 Tk",
      "price": "1500 Tk",
      "Variation": "Variation :",
      "weigth": "1 kg",
      "image" :"${AppImages.appel}",
      "color" :"${AppColors.amber200}"
    });

    cardItemsList.add({
      "name": "My Kookbags",
      "offPrice": "1800 Tk",
      "price": "1500 Tk",
      "Variation": "Variation :",
      "weigth": "1 kg",
      "image" :"${AppImages.cauliflower}",
      "color" :"${AppColors.amber200}"
    });


    cardItemsList.add({
      "name": "My Kookbags",
      "offPrice": "1800 Tk",
      "price": "1500 Tk",
      "Variation": "Variation :",
      "weigth": "1 kg",
      "image" :"${AppImages.cauliflower}",
      "color" :"${AppColors.amber200}"
    });



    cardItemsList.add({
      "name": "My Kookbags",
      "offPrice": "1800 Tk",
      "price": "1500 Tk",
      "Variation": "Variation :",
      "weigth": "1 kg",
      "image" :"${AppImages.appel}",
      "color" :"${AppColors.amber200}"
    });

  }
}
