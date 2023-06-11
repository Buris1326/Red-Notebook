import 'package:flutter/material.dart';






class sayfaNesne {
  static final TextStyle metinTipi = TextStyle(
    fontSize: 17.5, // font boyutu
    color: Colors.black, // yazı rengi
    fontWeight: FontWeight.bold, // yazı kalınlığı
  ); //Tarif detayları için
  static final ButtonStyle butonStili = ButtonStyle(backgroundColor:
  MaterialStateProperty.all(Colors.transparent)); //sayfaGemlik için
  static final TextStyle butonMetintipi = TextStyle(
      color: Colors.black87, fontSize: 22.16); //sayfaGemlik için


  Widget elevatedButton(String baslik, BuildContext context, Widget sayfa) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          style: butonStili,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => sayfa));
          },
          child: Text(baslik,
            style: butonMetintipi,
          ),
        ),
      ),
    );
  }


 Row ornek(String baslik, BuildContext context, Widget sayfa) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
    Expanded(
    child: Container(
        margin: const EdgeInsets.all(10),
    child: ElevatedButton(
    style:butonStili,
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => sayfa));
    },
    child: Text(baslik,
    style:butonMetintipi,
    ),
    ),
    ),
    )
    ]);
  }

  static String seker = '1 su bardağı şeker = 180 gram\n'
      '3/4 su bardağı şeker = 140 gram\n'
      '2/3 su bardağı şeker = 115 gram\n'
      '1/2 su bardağı şeker = 90 gram\n'
      '1/3 su bardağı şeker = 60 gram\n'
      '1/4 su bardağı şeker = 35 gram\n'
      '1 yemek kaşığı şeker = 15 gram\n'
      'Tepeleme 1 yemek kaşığı şeker= 23 gram\n'
      '1 tatlı kaşığı şeker = 8 gram\n'
      '1 çay kaşığı şeker = 4 gram\n';

  //Burası saray muhallebisinin tarifi için

  static final String sarayMuhallebisi =
      '\n\nMalzemeler:\n\n'
      'Saray Muhallebisinin Tarifi \n \n'
      '1 Litre Süt\n'
      '100 gr Tereyağı veya Margarin\n'
      '4 Yemek Kaşığı Un\n'
      '1 Su Bardağı Şeker\n'
      '1 Paket Vanilya\n'
      '1 Adet Yumurta Sarısı \n\n '
      'Yapılış\n'
      'Sütü kısık ateşte ısıt.\n '
      'Şekeri ve yumurta sarısını bir kapta çırp.\n'
      'Bu karışımı süte ilave edip karıştırarak şekerin erimesini sağla.\n'
      'Şeker eriyince hemen ocağın altını kapat şerbet çok sıcak olmamalı.\n'
      'Başka bir tencerede margarin veya tereyağını eritip unu ekle ve kavur.\n'
      'Kavurduğun una sütü yavaş yavaş ekle ve topaklanmaması için karıştır.\n'
      'Muhallebi kıvamına gelinceye kadar kaynat sonra ocağın altını kapat.\n'
      'Vanilyayıda ekle ve 2-3 dk daha karıştır daha sonra bir kaba koyup dolaba koy soğuyunca yiyebilirsin. \n\n'
      '\nMert İSTANBULLU\nAFİYET OLSUN';


  static final havucluKek =
      '\n\nMalzemeler:\n\n'
      '3 Yumurta\n'
      '2 Su Bardağı Şeker\n'
      '1 Su Bardağı Sıvıyağ\n'
      'Yarım Su Bardağı Süt\n'
      '3 Avuç Ceviz\n'
      '1 Avuç Kuru Üzüm\n'
      '5-6 Adet Havuç (Havuç çok aşırı büyük ise 4 tane de olur)\n'
      '1 Tatlı Kaşığı Tarçın\n'
      '1 Çay Kaşığı Tarçın\n'
      '1 Çay Kaşığı Toz Zencefi\n'
      'Yarım Çay Kaşığı Tuz\n'
      'Çeyrek Muskat\n'
      '1 Paket Kabartma Tozu\n'
      'Dolu Dolu 1 Çay Kaşığı Karbonat\n'
      '1 Paket Vanilya\n'
      "3,5 Su Bardağı Un\n\n\n"
      'Yapılışı\n\n'
      'Su kaynat üzümleri bir kaba koy ve üzerine kaynar suyu dök.\n'
      'Üzümler şişince süz.\n'
      'Cevizi ve üzümleri kabaca parçala.\n'
      'Havuçları rendele ve suyu çıktıysa sıkarak suyunu at çöpe.\n'
      'Fırını alt-üst ayarda 180 derecede ısınması için çalıştır.\n'
      'Yumurta ve şekeri, şeker eriyinceye kadar çırp.\n'
      'Yağı ve sütü ekleyip tekrar çırp.\n'
      'Havuçları ekleyip bir spatula veya kaşık yardımı ile karıştır. \n Eğer bu ve bundan sonraki adımları alttan yukarı doğru kapatarak karıştırırsan hamuru söndürmemiş olursun ve daha güzel kabarır.\n'
      'Cevizi ve üzümleri de karışıma ekle ve kaıştır.'
      'Unu ekle ve karıştır\n'
      '***NOT*** Un dahil bütün toz haldeki malzemeleri eleyerek kullanırsan daha iyi kabarır.\n'
      'Kalan bütün malzemeleri de ekle ve son bir kez karıştır.\n'
      'Hamurunda topak halde un kalmadığından emin oluna kadar karıştır.\n'
      '24 cm kelepçeli kek kalıbına karışımı tam ortasına olacak şekilde her yerine eşit olarak dök.\n'
      'Kalıbı masaya 3-4 defa vurdur kabarcıklar çıkması için.\n'
      '1 saat 10 dk sonra kek hazır. Üzeri çatlayıp içini çekince fırından çıkarabilirsin.\n'
      '***NOT*** \n Kekin üzeri çatlamadan sakın fırının kapağını açma eğer açarsan kek söner.\n'
      '***NOT*** \n Keki fırından çıkarır çıkarmaz sakın kesme içini hamurlaştırırsın. 5-6 dk ilk ısısının çıkmasını bekle.\n'
      '\nMert İSTANBULLU\nAfiyet Olsun';


  static final sutHelvasi =
      '\n\nMalzemeler:\n\n'
      '1 Litre Süt\n'
      '100 gr Tereyağı veya Margarin\n'
      '1 Su Bardağı Un\n'
      '1 Su Bardağı Şeker\n'
      '1 Paket Vanilya\n\n'
      'Yapılış\n\n'
      'Sütü ve şekeri bir tencereye koyup ocağa al. \n'
      'Şeker eriyene kadar karıştır. Sakın Kaynatma\n'
      'Başka bir tencerede margarin veya tereyağını erit üzerine unu ekle ve kısık ateşte 20-25 dk kavur\n'
      'Undan kavruk kokusu çıkınca sütü unun içerisine 4-5 adımda ekle ve her adımda iyice çırp ki topaklanmasın\n'
      'Tüm sütü ekledikten sonra ocağın altını aç. 3-4 dk kadar kaynat ve altını kapatıp vanilya ekle\n'
      'Kıvamının muhallebi kıvamında ve renginin de sütlü kahve olması lazım. Koklayınca bebek maması kokusu gelmeli\n'
      'İsteğe bağlı güveç kap, ısıya dayanıklı cam veya suffle kabına döküp 220 derece fırında turbo modda üzeri kızarıncaya kadar pişir\n'
      'Fırından çıkarınca üzerine dövülmüş fındık ve/veya ceviz koyabilirsin.\n'
      '\nMert İSTANBULLU\nAFİYET OLSUN\n';


  static final amonyakliPasta = '\n\nMALZEMELER:\n\n'
      '1 Su Bardağı Süt\n'
      '2 Yumurta\n'
      '1 Su Bardağı Şeker\n'
      '1 Su Bardağı Sıvıyağ\n'
      '1 Yemek Kaşığı Amonyak\n'
      '1 Pakte Kabartma Tozu\n'
      '1Paket Vanilya\n'
      '1 Paket Yaş Mayanın Yarısı\n Hamurun içine uvala ve mıncıkla.\n'
      'Aldığı Kadar Un\n\n'
      'Kreması İçin:\n\n'
      '2 Litre Süt\n'
      '4 Yemek Kaşığı Nişasta\n'
      '4 Yemek Kaşığı Un\n'
      '2 Paket Kakao\n'
      'İstediğin Kadar Şeker\n'
      '***NOT*** Bu ölçüdeki krema 4 adet bisküviyi ıslatmak için geçerli\n'
      '***NOT*** Bol bisküvili olursa daha güzel olur.\n'
      'Hazırlanış:\n'
      'Tüm malzemeleri bir kaba koy ve yoğur.\n'
      'Hamuru 30 dk dinlendir.\n'
      '8 eş parçaya böl ve orta boy tepsi boyutunda aç.\n'
      'Önceden ısıtılmış 170 derece turbo ayardaki fırında altı ve üstü kızarana kadar hamurları tek tek pişir\n'
      'Krema için bütün malzemeleri tencereye koy ve kaynayana kadar çırp.\n'
      'Tepsinin dibine kremadan koy ve üzerine bisküviden koy \n Bu şekilde her katında krema olacak şekilde 4 bisküviyi ıslat.\n'
      '***NOT*** Eğer tarifteki krema ölçüsü aynı şekilde kullanıldıysa 4 bisküvi.\n'
      '***NOT*** Pastanın her katına kremayı eşit dökmeye çalış ve en üst kısmına ayırmayı unutma.\n'
      'Buzdolabında 1 gece beklet.\n'
      '\n\nMert İSTANBULLU\nAfiyet Olsun';

  static final String misirKeki = '\n\nMalzemeler:\n\n'
      '3 Yumurta\n'
      '1 Su Bardağı Şeker\n'
      'Yarım Su Bardağı Yağ\n'
      'Yarım Su Bardağı Süt\n'
      '1 Yemek Kaşığı Un\n'
      'En Az 1-1,5 Su Bardağı Mısır Unu\n'
      '1 PaketKabartma Tozu\n'
      '1 Paket Vanilya\n'
      'İsteğe Bağlı Tarçın, Ceviz veya Fındık\n\n'
      'Yapılışı\n\n'
      'Yumurta ve şekeri şeker eriyinceye kadar çırp.\n'
      'Yağ ve sütü ekleyip çırpmaya devam et.\n'
      'İsteğe bağlı malzemeleri ekle ve bir kaşık/spatula yardımı ile karıştır.\n'
      'Unları eleyerek ekle ve karıştr\n'
      'Kabartma tozu ve vanilyayı ekle ve tekrar karıştır.\n'
      '180 derece fırında üzeri kızzrıp çatlayana kadar pişir.\n\n'
      '\nMert İSTANBULLU\nAFİYET OLSUN';


  static final String cikolataliKek = '\n\nMalzemeler\n\n'
      '\nKek için\n\n'
      'Yarım Bardak Süt\n'
      '1 Bardak Un\n'
      '1,5 Bardak Şeker\n'
      '130 mL Sıvı Yağ\n'
      '3 Çay Kaşığı Kakao\n'
      '4 Yumurta\n'
      '1`er Paket Kabartma Tozu ve Vanilya\n'
      '\nSosu İçin:\n\n'
      '1 Kutu Krema (200 gr)\n'
      '1,5 Bardak Süt\n'
      '2 Yemek Kaşığı Kakao\n'
      '3 Yemek Kaşığı Pudra Şekeri\n'
      '\nYapılışı:\n\n'
      'Fırını alt-üst ayarda 180 derecede ısınması için çalıştır.\n'
      'Yumurta ve şekeri şeker eriyinceye kadar çırp.\n'
      'Yağ ve sütü ekleyip çırpmaya devam et.\n'
      'Un, kakao, vanilya ve kabartma tozunu eleyerek ekle ve bir spatula yardımı ile karıştır.\n'
      'Bir kelepçeli kalıba dök ve fırında min 50-55 dk üzeri kızarıp çatlayıncaya kadar pişir.\n'
      'Sosu için tüm malzemeleri bir sos tenceresine koy ve kaynayana kadar bir çırpıcı kardımı ile çırp.\n'
      'Kek fırından çıkar çıkmaz üzerine delikler aç.\n'
      '***NOT***\n'
      'Delik sayısı ne kadar çok olursa o kadar iyi. Ayrıca delikler geniş olursa da iyi.\n'
      'Sosu her yerine eşit bir şekilde dök.\n'
      'Dolapta 2-3 saat dinlendir.\n\n'
      'Mert İSTANBULLU\nAFİYET OLSUN\n';


  static final String surprizKurabiye = '\n\nMalzemeler:\n\n'
      '125 gr Oda Sıcaklığında Margarin\n'
      '1 Su Bardağı Pudra Şekeri\n'
      'Yarım Çay Bardağı Kakao\n'
      '1`er Paket Kabartma Tozu ve Vanilya\n'
      '1 Yumurta Sarısı\n'
      '1 Çay Bardağı Sıvı Yağ\n'
      '2-2,5 Su Bardağı Un\n'
      '\nİç Harcı İçin\n'
      '\n2 Çay Bardağı Hindistan Cevizi\n'
      '2 Yemek Kaşığı Şeker\n'
      '1 Yumurtanın Beyazı\n'
      '\nYapılışı:\n\n'
      'İç harç malzemelerini bir kapta karıştır.\n'
      'Margarini ve şekeri biraz mıncıkla.'
      '\nDaha sonra kalan malzemeleri ekle ve hamuru yoğur.\n'
      'Hamurdan küçük parçalar kopar ve içerisine iç harçtan koy.\n'
      'Hamurları top şeklinde şekillendir.\n'
      'Yağlı kağıt serili bir tepsiye diz\n'
      'Önceden ısıtılmış 180 derece turbo fan ayarda 30-35 dk pişir.\n'
      '***NOT***\n'
      'Hamur sert olmamalı,\n'
      'Hamur çok yumuşak olamamalı.\n'
      '\nMert İSTANBULLU\nAFİYET OLSUN\n';


  static final String tahinliCorek = '\n\nMalzemeler:\n\n'
      'Hamuru İçin:\n\n'
      '3-4 Su Bardağı Un\n'
      '1 Çay Kaşığı Tuz\n'
      '2 Dolu Yemek Kaşığı Eritilmiş Tereyağı\n'
      '3 Çay Bardağı Ilık Süt\n'
      '1 Paket Maya\n'
      '1 Çorba Kaşığı Şeker\n'
      '1 Su Bardağı Sıvı Yağ\n'
      '\nİçi İçin:\n\n'
      '1,5 Su Bardağı Tahin\n'
      '1,5 Su Bardağı Şeker\n'
      '\nÜzeri İçin:\n\n'
      'Ceviz,Fındık veya Susam\n'
      '\nYapılışı:\n\n'
      'Bir kapta süt, maya ve şekeri karıştırırarak 5 dk kadar beklet.\n'
      'Başka bir kapta iç harç malzemelerini karıştır.\n'
      'Bir leğende hamur malzemelerinin kalanını ekle ve karıştır.\n'
      'Hamur malzemelerinin içerisine maya karışımını da ekle.\n'
      'Hamur özleşinceye kadar yoğur.\n'
      'Hamuru 1,5 saat mayalandır.\n'
      'Mayalanan hamuru eş parçalara böl.\n'
      'Hamuru elin ile yuvarlak olacak şekilde aç.\n'
      '! Eğer çok inceltirsen yırtılabilir.\n'
      'İçerisine iç harcından bir miktar koy ve sür.\n'
      'Hamuru ilk önce rulo şeklinde sar.\n'
      'Daha sonra hamuru bükerek uzat.\n'
      'Son olarak salyangoz şeklinde sar.\n'
      'Yağlı kağıt serili tepside 30 dk dinlendir.\n'
      'Üzerine yumurta sarısı sür ve susam,ceviz,fındık dök\n '
      'Önceden turbo fan ayarda 180 derecede ıstılmış fırında üstleri kızarana kadar pişir.\n'
      '\nMert İSTANBULLU\n\nAFİYET OLSUN\n';


  static final String starbucksKurabiye = '\n\nMalzemeler:\n\n'
      '175 gr Margarin\n'
      '2 Yumurta \n'
      '1 Su Bardağı Pudra Şekeri\n'
      '1`er Paket Kabartma Tozu ve Vanilya\n'
      '1 Su Bardağı Ceviz ve/veya Fındık\n'
      '1 Çay Bardağı Damla Çikolata\n'
      '1 Tatlı Kaşığı Kakao\n'
      '3-3,5 Su Bardağı Un\n'
      '\nYapılışı:\n\n'
      'Kabartma tozu, vanilya, damla çikolata, ceviz ve fındık hariç tüm malzemeleri yoğur.\n'
      'Kalan malzemeleri de ekle ve bir daha yoğur.\n'
      'Bir strech filme hamuru koy ve hamuru ince uzun silindir şeklinde şekillendir.\n'
      'Dondurucuda 1 saat beklet.\n'
      '180 derece turbo ayarda pişir.\n'
      '\nMert İSTANBULLU\nAFİYET OLSUN\n';

  static final String lazBoregi = '\n\nMalzemeler:\n\n'
      'Hamuru İçin:\n\n'
      '1 Yemek Kaşığı Margarin\n'
      'Yarım Çay Bardağı Sıvı Yağ\n'
      'Yarım Çay Bardağı Süt\n'
      'Yarım Çay Bardağı Su\n'
      '1 Yumurta\n'
      '1 Tutam Tuz\n'
      '3,5 Su Bardağı Un\n'
      '\nMuhallebisi İçin:\n\n'
      '4 Su Bardağı Süt\n'
      '4,5 Yemek Kaşığı Tepeleme Un\n'
      '1 Su Bardağı Şeker\n'
      '4 Yumurta\n'
      'Yarım Çay Kaşığı Karabiber\n'
      '1 Yemek Kaşığı Margarin\n'
      '\nŞerbeti İçin:\n\n'
      '4 Su Bardağı Şeker:\n'
      '4,5 Su Bardağı Su\n'
      'Lİmon\n'
      '\nÜzeri İçin:\n\n'
      '250 gr Margarin\n'
      'Yarım Su Bardağı Sıvı Yağ\n'
      '\nAçmak İçin:\n'
      'Nişasta\n'
      '\nYapılışı:\n\n'
      'Tüm hamur malzemelerini bir kaba al ve yoğur.\n'
      '!!Hamur ne çok sert ne de çok yumuşak olmalı\n'
      'Hamurları küçük eşit büyüklükteki parçalara ayır.\n'
      'Her parçayı 5 cm çapında aç.\n'
      'Bu işlemi gerçekleştirirken nişasta kullanmayı unutma.\n'
      'Açtığın parçaları bir tepsi veya tabağa koy.\n'
      'Tepsiye veya tabağa koyarken her hamurun arasına nişasta serp ve poşet koy ki birbirine yapışmasınlar.\n'
      'En az 1-1,5 saat buzdolabında hamurları dinlendir.\n'
      'Muhallebisi için,\n'
      'Süt, un ve şekeri çırparak hiç topak kalmayacak şekilde kaynat.\n'
      'Kıvam alınca 1-2 dk daha kaynatmaya devam et ve altını kapat.\n'
      'İçerisine margarini ekle ve eriyip yok olana kadar karıştır.\n'
      'Muhallebi soğuyunca içerisine yumurtaları tek tek ekle ve her yumurtada çırp.\n'
      'Daha sonra karabiberi ekle ve yine çırp.\n'
      '!!!Muhallebinin bu aşamada soğuk olması önemli.\n'
      '!!!Muhallebinin son aşamada pürüzsüz bir kıvamda olması gerekiyor.\n'
      '***!!!Muhallebiyi sakın ama sakın mikser ile çırpma.\nBir tel yardımı ile çırp.\n'
      'Hamurun devamı;\n'
      'Hamurları bol nişasta ile incecik aç.\n'
      'Açtığın hamurları 4 parmak genişliğinde şeritler halinde DÜZ bir şekilde kes.\n'
      'Kestiğin her şeridin başına bir yemek kaşığı muhallebiden koy.\n'
      'Şeritleri üçgen muska şeklinde katla.\n'
      'Her parçayı düzgünce tepsiye diz.\n'
      'Tüm hamurlara aynı işlemi yaptıktan sonra,\n'
      'Üzeri için gerekli olan yağları bir tavaya al\nMargarin eriyinceye kadar ocağın üzerinde tut.\n'
      '180 derece, turbo fan olarak önceden ısıtılmış fırında üzeri kızarana kadar,\n'
      'Ortalama 30-45 dk daha sonrasında 150 derecede içini çekene kadar pişir.\n'
      'Fırına koyar koymaz şerbet için tüm malzemeleri bir tencereye koy.\n'
      'Şerbet kaynamaya başlayınca (göz göz olunca) orta ateşte 15-20 dk kaynat.\n'
      'Fırından tatlıyı çıkarır çıkarmaz şerbeti dök.\n'
      '2 saat beklettikten sonra yiyebilirsin.\n'
      '\nMert İSTANBULLU\n\nAFİYET OLSUN\n';


  static final String muhallebi = '\n\nMalzemeler:\n\n'
      '1 Lt Süt\n'
      '5-60 gr Margarin\n'
      '1 Paket Vanilya\n'
      '3 Kahve Fincanı Şeker\n'
      '2 Kahve Fincanı Un\n'
      '\nYapılışı:\n'
      '\nSüt şeker ve unu bir tencereye al,\nkaynayana kadar çır.\n'
      '1-2 dk daha kaynatmaya devam et.\n'
      'Ocağın altını kapat ve margarin ve vanilyayı ekle.\n'
      'Margarin eriyene kadar karıştır.\n'
      'Dilediğin kaplara dök.\n'
      'Soğuyana kadar bekle.\n'
      '\nMert İSTANBULLU\nAFİYET OLSUN\n';


  static final String firinSutlac = '\n\nMalzemeler:\n\n'
      '1 Lt Süt\n'
      '1 Paket Vanilya\n'
      '3 Yemek Kaşığı Nişasta + 3 Yemek Kaşığı Süt\n'
      '1/4 Su Bardağı Pirinç\n'
      'Yarım Su Bardağı Su\n'
      '1 Su Bardağı Şeker\n'
      '\nYapılışı:\n\n'
      'Pirinci ve suyu tencereye koyup kısık ateşte kapağı kapalı olarak pişir.\n'
      'Sütü, şekeri ve pirinci(kalan suyunu süzmeden) başka bir tencerede orta ateşte 5 dk karıştır.\n'
      'Nişasta ve 3 yemek kaşığı sütü bir kasede karıştır.\n'
      'Bu karışımı pirincin içerisine ekle.\n'
      '5 dk boyunca orta ateşte kaynat.\n'
      'Vanilyayı da ekle ve bir daha karıştır.\n'
      'Daha sonra ocağın altını kapat ve sütlacı fırın kaselerine paylaştır.\n'
      'Kaselerin ısıya dayanıklı olması önemli.\n'
      'Sütlaçları 15 dk kadar dışarıda beklet.\n'
      '***Üzeri kaymak tutması için***\n***Bu sayede daha iyi kızarır.\n'
      'Su kaynat.\n'
      'Sütlaçları bir fırın tepsisine al ve tepsinin içerisine bir miktar kaynar su dök.\n'
      'Önceden ısıtılmış 200 derece turbo ayardaki fırında üzerleri kızarıncaya kadar fırında tut.\n'
      'Soğuyunca veya isteğe bağlı sıcakken yiyebilirsin.\n'
      '\nMert İSTANBULLU\n\nAFİYET OLSUN\n';


  static final String trilece = '\n\nMalzemeler:\n\n'
      'Keki İçin:\n\n'
      '-> 5 Yumurta\n'
      '-> 1,5 Su Bardağı Un\n'
      '-> 1 er Paket Vanilya ve Kabartma Tozu'
      '\n\nÜzeri İçin:\n\n'
      '-> 1 Paket Krem Şanti\n'
      '-> 1 Su Bardağı Süt\n'
      '\nSütlü Sosu İçin:\n\n'
      '-> 3,5 Su Bardağı Süt\n'
      '-> 3 Yemek Kaşığı Şeker\n'
      '-> 200 mL sıvı Krema\n'
      '\nKaramel Sos İçin:\n\n'
      '-> 1 Çay Bardağı Şeker\n'
      '-> 2 Yemek Kaşığı Margarin'
      '\n-> 200 mL Sıvı Krema\n'
      '\nYapılışı:\n\n'
      'Keki için,\n şekeri ve yumurtayı çırp.\n'
      'Kalan malzemeleri de eleyerek karışıma ekle\n Bir spatula yardımı ile karıştır.\n'
      '28x28 cm kare borcama yağlı kağıt koy ve dök. \n170 derece alt-üst ayarda 10 dk\nDaha sonra 150 derecede 30 dk pişir.\n'
      'Karamel sos için,\n'
      'Şekeri bir tavaya koy ve kısık ateşte erit.\n'
      'Erime işlemi gerçekleşene kadar asla karıştırma.\n'
      'Sadece tavayı salla\nDemir kaşık asla sürme.\n'
      'Şeker eriyince içerisine margarin ekle.\n'
      'Margarin eriyince içerisine kremayı da ekle ve 3-4 dk kaynat\n'
      'Karamel sosu başka bir kaba alarak soğut.\n'
      'Sütlü sos için tüm malzemeleri bir kapta çırp.\n'
      'Kremşantiyi hazırla.\n'
      'Kek fırından çıkınca ilk sıcaklığının çıkmasını bekle.\n'
      'Yağlı kağıdı çıkart ve keki borcama ters bir şekilde koy.\n'
      'Kekin üzerine chopstick ile delikler aç ve sütlü sosu dök.\n'
      'Kremşantiden bir miktar ayır (üzerini süslemek için) ve kekikn üzerine sür.\n'
      'Karamelin tamamını dök.\n'
      'Kalan kremşantiyi 3-4 cm aralıklarla sıkma torbası yardımıyla uzun ince şeritler halinde sık.\n'
      'Bu sıkma işlemi borcanın iki enarı arasında kesintisiz olmalı.\n'
      'Şeritlerin üzerinden kürdan yardımı ile geçerek desen oluştur.\n'
      '2-3 saat dinlendir.\n'
      '\nMert İSTANBBULLU\n\nAFİYET OLSUN\n';
}