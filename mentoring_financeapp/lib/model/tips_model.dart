class TipsModel {
  final String judul;
  final String isi;

  TipsModel({this.judul, this.isi});

  factory TipsModel.fromJson(Map<String, dynamic> object) {
    return TipsModel(
      judul: object['tips_judul'],
      isi: object['tips_isi'],
    );
  }
}
