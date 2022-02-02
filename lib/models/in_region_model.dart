class InRegionModel {
  String? word;
  List<String> inRegion = [];

  InRegionModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['inRegion'].forEach((element) {
      inRegion.add(element);
    });
  }
}