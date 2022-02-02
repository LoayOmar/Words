class MemberOfModel {
  String? word;
  List<String> memberOf = [];

  MemberOfModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['memberOf'].forEach((element) {
      memberOf.add(element);
    });
  }
}