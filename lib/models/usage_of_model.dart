class UsageOfModel {
  String? word;
  List<String> usageOf = [];

  UsageOfModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['usageOf'].forEach((element) {
      usageOf.add(element);
    });
  }
}