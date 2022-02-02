class FrequencyModel {
  String? word;
  Frequency? frequency;

  FrequencyModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    frequency = Frequency.fromJson(json['frequency']);
  }
}

class Frequency {
  var zipf;
  var perMillion;
  var diversity;

  Frequency.fromJson(Map<String, dynamic> json){
    zipf = json['zipf'];
    perMillion = json['perMillion'];
    diversity = json['diversity'];
  }
}