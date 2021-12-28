class CategoryRepository {

  final List<Category> categories = [
    Category("Tasarım", 20, "https://www.upload.ee/image/13731805/designCategory.png"),
    Category("Yazılım", 24, "https://www.upload.ee/image/13731805/designCategory.png"),
    Category("Metaverse", 1, "https://www.upload.ee/image/13731805/designCategory.png"),
  ];

}

class Category {
  String categoryName;
  int categoryTermValue;
  String categoryImageUrl;

  Category(this.categoryName, this.categoryTermValue, this.categoryImageUrl);
}