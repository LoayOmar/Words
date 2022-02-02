class SimilarToModel {
  String? word;
  List<String> similarTo = [];

  SimilarToModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['similarTo'].forEach((element) {
      similarTo.add(element);
    });
  }
}