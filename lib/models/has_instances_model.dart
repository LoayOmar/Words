class HasInstancesModel {
  String? word;
  List<String> hasInstances = [];

  HasInstancesModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['hasInstances'].forEach((element) {
      hasInstances.add(element);
    });
  }
}