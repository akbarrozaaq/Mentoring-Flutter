class UangModel {
  final String uang;
  final String deskripsi;

  UangModel({this.uang, this.deskripsi});

  factory UangModel.fromJson(Map<String, dynamic> object) {
    return UangModel(
      uang: object['uang_uang'],
      deskripsi: object['uang_deskripsi'],
    );
  }
}
