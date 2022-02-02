class RegionOfModel {
  String? word;
  List<String> regionOf = [];

  RegionOfModel.fromJson(Map<String, dynamic> json){
    word = json['word'];
    json['regionOf'].forEach((element) {
      regionOf.add(element);
    });
  }
}