class EntailsModel {
  String? word;
  List<String> entails = [];

  EntailsModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['entails'].forEach((element) {
      entails.add(element);
    });
  }
}