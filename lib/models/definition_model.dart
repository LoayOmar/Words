class DefinitionsModel {
  String? word;
  List<Definitions> definitions = [];

  DefinitionsModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['definitions'].forEach((element) {
      definitions.add(Definitions.fromJson(element));
    });
  }
}

class Definitions {
  String? definition;
  String? partOfSpeech;

  Definitions.fromJson(Map<String, dynamic> json){
    definition = json['definition'];
    partOfSpeech = json['partOfSpeech'];
  }
}