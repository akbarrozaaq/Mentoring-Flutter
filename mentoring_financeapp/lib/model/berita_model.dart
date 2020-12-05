class BeritaModel {
  final String judul;
  final String isi;
  final String gambar;
  final String createdDate;
  final String penulis;

  BeritaModel(
      {this.judul, this.isi, this.gambar, this.createdDate, this.penulis});

  factory BeritaModel.fromJson(Map<String, dynamic> object) {
    return BeritaModel(
      judul: object['berita_judul'],
      isi: object['berita_isi'],
      gambar: object['berita_gambar'],
      createdDate: object['berita_createdDate'],
      penulis: object['berita_penulis'],
    );
  }
}
