class HasCategoriesModel {
  String? word;
  List<String> hasCategories = [];

  HasCategoriesModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['hasCategories'].forEach((element) {
      hasCategories.add(element);
    });
  }
}