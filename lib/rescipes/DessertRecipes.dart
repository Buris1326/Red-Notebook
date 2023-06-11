class DessertRecipe {
  String ad;
  String yapilis;
  String malzemeler;

  DessertRecipe({
    required this.ad,
    required this.yapilis,
    required this.malzemeler,
  });

  Map<String, dynamic> toMap() {
    return {
      'ad': ad,
      'yapilis': yapilis,
      'malzemeler': malzemeler,
    };
  }
}


/*'Saray Muhallebisi': DessertRecipe(
    ad: 'Saray Muhallebisi',


    malzemeler:
        '1 Litre Süt\n'
        '100 gr Tereyağı veya Margarin\n'
        '4 Yemek Kaşığı Un\n'
        '1 Su Bardağı Şeker\n'
        '1 Paket Vanilya\n'
        '1 Adet Yumurta Sarısı \n\n ',

    tarif:
        'Yapılış\n'
        'Sütü kısık ateşte ısıt.\n '
        'Şekeri ve yumurta sarısını bir kapta çırp.\n'
        'Bu karışımı süte ilave edip karıştırarak şekerin erimesini sağla.\n'
        'Şeker eriyince hemen ocağın altını kapat şerbet çok sıcak olmamalı.\n'
        'Başka bir tencerede margarin veya tereyağını eritip unu ekle ve kavur.\n'
        'Kavurduğun una sütü yavaş yavaş ekle ve topaklanmaması için karıştır.\n'
        'Muhallebi kıvamına gelinceye kadar kaynat sonra ocağın altını kapat.\n'
        'Vanilyayıda ekle ve 2-3 dk daha karıştır daha sonra bir kaba koyup dolaba koy soğuyunca yiyebilirsin. \n\n'
        '\nMert İSTANBULLU\nAFİYET OLSUN',
  ),

 */