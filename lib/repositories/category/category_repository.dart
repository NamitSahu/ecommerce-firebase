import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_firebase/models/category_model.dart';
import 'package:ecommerce_firebase/repositories/category/base_category_repositry.dart';

class CategoryRepository extends BaseCategoryReposirtory {
  final FirebaseFirestore _firebaseFirestore;

  CategoryRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Stream<List<Category>> getAllCategories() {
    return _firebaseFirestore.collection('categories').snapshots().map(
        (snapshot) =>
            snapshot.docs.map((doc) => Category.fromSnapshot(doc)).toList());
  }
}
