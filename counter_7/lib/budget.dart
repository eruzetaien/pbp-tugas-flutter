class Budget {
  int nominal;
  String judul;
  String jenis;
  DateTime tanggal;
  static List<Budget> listBudget = [];

  Budget(this.judul, this.nominal, this.jenis, this.tanggal);
}
