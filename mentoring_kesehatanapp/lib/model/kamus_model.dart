class KamusModel {
  final String singkatan;
  final String kepanjangan;
  final String pengertian;

  KamusModel({this.singkatan, this.kepanjangan, this.pengertian});

  factory KamusModel.fromJson(Map<String, dynamic> object) {
    return KamusModel(
      singkatan: object['kamus_singkatan'],
      kepanjangan: object['kamus_kepanjangan'],
      pengertian: object['kamus_pengertian'],
    );
  }
}
