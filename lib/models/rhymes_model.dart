class RhymesModel {
  String? word;
  Rhymes? rhymes;

  RhymesModel.fromJson(Map<String, dynamic> json){
  word = json['word'];
  rhymes = Rhymes.fromJson(json['rhymes']);
  }
}

class Rhymes {
  List<String> all = [];

  Rhymes.fromJson(Map<String, dynamic> json){
    json['all'].forEach((element) {
      all.add(element);
    });
  }
}