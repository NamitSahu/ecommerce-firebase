import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_firebase/models/models.dart';

import 'base_prodcut_repository.dart';

class ProductRepository extends BaseProductReposirtory {
  final FirebaseFirestore _firebaseFirestore;

  ProductRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Stream<List<Product>> getAllProducts() {
    return _firebaseFirestore
        .collection('products')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => Product.fromSnapshot(doc)).toList();
    });
  }
}
