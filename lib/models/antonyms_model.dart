class AntonymsModel {
  String? word;
  List<String> antonyms = [];

  AntonymsModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['antonyms'].forEach((element) {
      antonyms.add(element);
    });
  }
}