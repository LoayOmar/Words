class HasTypesModel {
  String? word;
  List<String> hasTypes = [];

  HasTypesModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['hasTypes'].forEach((element) {
      hasTypes.add(element);
    });
  }
}