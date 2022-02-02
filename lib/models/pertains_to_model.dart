class PertainsModel {
  String? word;
  List<String> pertainsTo = [];

  PertainsModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['pertainsTo'].forEach((element) {
      pertainsTo.add(element);
    });
  }
}