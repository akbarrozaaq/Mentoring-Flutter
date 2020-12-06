class JumlahUangModel {
  final String jumlahuang;

  JumlahUangModel({this.jumlahuang});

  factory JumlahUangModel.fromJson(Map<String, dynamic> object) {
    return JumlahUangModel(
      jumlahuang: object['jumlah_uang'],
    );
  }
}
