import 'package:get/get.dart';
import 'package:sportysole/models/product_model.dart';

class CartPageController extends GetxController {
  RxInt currentNumber = 1.obs;
  RxInt currentImage = 0.obs;
  RxInt currentCatecory = 0.obs;
  RxInt quantity = 0.obs;
  RxInt totalPrice = 0.obs;
  RxInt currentSize = 0.obs;

  RxBool isExpanded = false.obs;
  RxList cartProduct = [].obs;

  onAdd() {
    currentNumber.value++;
    quantity = currentNumber;
    update();
  }

  onRemove() {
    if (currentNumber.value != 1) {
      currentNumber--;
      quantity = currentNumber;
      update();
    }
  }

  void resetNumber() {
    currentNumber.value = 1;
    quantity.value = 0;
    update();
  }

  addToCart(product, int price) {
    cartProduct.add(product);
    quantity++;
    totalPrice += price;
    update();
  }

  removeFromCart(product, int price) {
    cartProduct.remove(product);
    quantity--;
    totalPrice -= price;

    update();
  }
}
