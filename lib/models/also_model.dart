class AlsoModel {
  String? word;
  List<String> also = [];

  AlsoModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['also'].forEach((element) {
      also.add(element);
    });
  }
}