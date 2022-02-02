class IsATypeOfModel {
  String? word;
  List<String> typeOf = [];

  IsATypeOfModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['typeOf'].forEach((element) {
      typeOf.add(element);
    });
  }
}