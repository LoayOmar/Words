class PronunciationModel {
  String? word;
  Pronunciation? pronunciation;

  PronunciationModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    pronunciation = Pronunciation.fromJson(json['pronunciation']);
  }
}

class Pronunciation {
  String? all;
  String? noun;
  String? verb;

  Pronunciation.fromJson(Map<String, dynamic> json){
    all = json['all'];
    noun = json['noun'];
    verb = json['verb'];
  }
}