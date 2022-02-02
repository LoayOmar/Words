class SubstanceOfModel {
  String? word;
  List<String> substanceOf = [];

  SubstanceOfModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['substanceOf'].forEach((element) {
      substanceOf.add(element);
    });
  }
}