class SynonymsModel {
  String? word;
  List<String> synonyms = [];

  SynonymsModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['synonyms'].forEach((element) {
      synonyms.add(element);
    });
  }
}