class HasMembersModel {
  String? word;
  List<String> hasMembers = [];

  HasMembersModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['hasMembers'].forEach((element) {
      hasMembers.add(element);
    });
  }
}