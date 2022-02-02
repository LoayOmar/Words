class HasPartsModel {
  String? word;
  List<String> hasParts = [];

  HasPartsModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['hasParts'].forEach((element) {
      hasParts.add(element);
    });
  }
}