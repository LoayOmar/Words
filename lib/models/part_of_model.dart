class PartOfModel {
  String? word;
  List<String> partOf = [];

  PartOfModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['partOf'].forEach((element) {
      partOf.add(element);
    });
  }
}