class SyllablesModel {
  String? word;
  Syllables? syllables;

  SyllablesModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    syllables = Syllables.fromJson(json['syllables']);
  }
}

class Syllables {
  int? count;
  List<String> list = [];

  Syllables.fromJson(Map<String, dynamic> json){
    count = json['count'];
    json['list'].forEach((element) {
      list.add(element);
    });
  }
}