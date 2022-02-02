class HasSubstancesModel {
  String? word;
  List<String> hasSubstances = [];

  HasSubstancesModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['hasSubstances'].forEach((element) {
      hasSubstances.add(element);
    });
  }
}