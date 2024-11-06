import 'package:get/get.dart';
import 'package:trogon_media_machine_test/feature/home/models/product_model.dart';
import 'package:trogon_media_machine_test/feature/home/services/products_api_services.dart';

class ProductsController extends GetxController {
  var isLoaded = false.obs;
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();

    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      isLoaded.value = false;

      products.assignAll(
        await ProductsApiServices.getProducts(),
      );

      isLoaded.value = true;
    } catch (e) {
      Get.snackbar('Cannot get products', 'Please check your connection');
    }
  }
}
