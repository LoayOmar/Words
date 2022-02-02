class IsAnInstanceOfModel {
  String? word;
  List<String> instanceOf = [];

  IsAnInstanceOfModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['instanceOf'].forEach((element) {
      instanceOf.add(element);
    });
  }
}