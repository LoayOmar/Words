class ExamplesModel {
  String? word;
  List<String> examples = [];

  ExamplesModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['examples'].forEach((element) {
      examples.add(element);
    });
  }
}