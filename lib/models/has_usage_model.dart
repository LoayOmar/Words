class HasUsagesModel {
  String? word;
  List<String> hasUsages = [];

  HasUsagesModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['hasUsages'].forEach((element) {
      hasUsages.add(element);
    });
  }
}