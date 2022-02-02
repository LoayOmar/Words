class InCategoryModel {
  String? word;
  List<String> inCategory = [];

  InCategoryModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['inCategory'].forEach((element) {
      inCategory.add(element);
    });
  }
}