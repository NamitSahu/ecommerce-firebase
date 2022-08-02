import '../../models/models.dart';

abstract class BaseProductReposirtory {
  Stream<List<Product>> getAllProducts();
}
