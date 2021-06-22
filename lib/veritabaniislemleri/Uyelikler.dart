
class Uyelikler {
  final String isimsoyisim;
  final String eposta;
  final int sifre;

  Uyelikler({this.isimsoyisim, this.eposta, this.sifre});

  Map<String, dynamic> toMap() {
    return {
      'İsim Soyisim': isimsoyisim,
      'e- mail': eposta,
      'Şifre': sifre,
    };
  }

  @override
  String toString() {
    return 'Üyelikler{İsism Soyisim: $isimsoyisim, e-mail: $eposta, Şifre: $sifre}';
  }
}

