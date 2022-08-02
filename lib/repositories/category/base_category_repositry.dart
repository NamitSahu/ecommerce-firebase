import '../../models/models.dart';

abstract class BaseCategoryReposirtory {
  Stream<List<Category>> getAllCategories();
}
