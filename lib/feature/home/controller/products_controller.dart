import 'package:get/get.dart';
import 'package:trogon_media_machine_test/feature/home/models/product_model.dart';
import 'package:trogon_media_machine_test/feature/home/services/products_api_services.dart';

class ProductsController extends GetxController {
  var isLoaded = false.obs;
  var errorText = ''.obs;
  var products = <Product>[].obs;

  var iamgeUrls = [
    'https://thumbs.dreamstime.com/b/germany-berlin-september-man-touches-zebra-electronic-product-scanning-device-store-germany-berlin-september-person-touches-338230812.jpg',
    'https://img.freepik.com/premium-photo/laptop-with-accessories-energy-information-safety-concept_392895-220423.jpg?semt=ais_hybrid',
    'https://img.freepik.com/free-photo/top-view-dvd-music-set_1150-6660.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs0mhOXYoIjKoPZ9rxU1k14dlK9VgVv4FHRw&s',
    'https://img.freepik.com/free-photo/still-life-books-versus-technology_23-2150062920.jpg',
    'https://www.techtarget.com/rms/onlineimages/hp_elitebook_mobile.jpg',
  ].obs;

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
      errorText.value = 'Failed to get products. Try again later';

      Get.snackbar('Cannot get products', 'Please check your connection');
    }
  }
}
