class Food {
  String? title;
  String? image;
  String? about;
  String? prices;

 Food({this.title, this.about, this.prices, this.image});
}

var foodList = [
  Food(
    title: "Rendang Dagiang",
    image:
        "https://cdns.klimg.com/merdeka.com/i/w/news/2021/03/22/1287405/content_images/670x335/20210322111522-1-menu-masakan-padang-asli-001-kurnia-azizah.jpg",
    about:
        "Kuliner tradisional khas Padang ini pernah dinobatkan sebagai makanan terlezat di dunia. Kelezatan dari daging sapi yang dimasak dengan campuran bumbu dan rempah ini tentu tak perlu lagi diragukan kelezatannya.",
    prices: "15.000",
  ),
  Food(
    title: "Sate Padang",
    image:
        "https://awsimages.detik.net.id/community/media/visual/2020/03/07/6c3ad313-59a2-42aa-8c50-f8e6cdfdb039_169.jpeg?w=700&q=90",
    about:
        "Sate khas Padang adalah kuliner tradisional ranah minang selanjutnya yang tak kalah populer. Terbuat dari daging sapi dan terkadang dikombinasikan dengan usus dan lidah, makanan khas Padang ini disajikan dengan siraman saus kuah sate padang kekuningan gurih yang kaya akan rempah.",
    prices: "13.000",
  ),
  Food(
    title: "Dendeng Balado",
    image:
        "https://asset.kompas.com/crops/eVUT_TbyT9rbV3Bz4_jW0JCcCgU=/0x333:1000x1000/750x500/data/photo/2020/08/02/5f26b02a99288.jpg",
    about:
        "Dendeng adalah daging sapi yang dikeringkan sebagai metode pengawetan. Oleh masyarakat Minang, dendeng ini diolah dengan bumbu balado pedas yang sangat cocok untuk Anda penggemar kuliner dengan cita rasa yang pedas.",
    prices: "13.000",
  ),
  Food(
    title: "Dendeng Batokok",
    image:
        "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/07/06/908004434.png",
    about:
        "masakan khas Padang ini diolah dari dendeng yang tak kalah lezat, yaitu dendeng Batokok. Kuliner tradisional Padang ini diolah dengan cara dipukul yang dalam bahasa setempat disebut batokok.",
    prices: "13.000",
  ),
  Food(
    title: "Soto Padang",
    image:
        "https://selerasa.com/wp-content/uploads/2020/02/Resep-soto-padang-1200x720.jpg",
    about:
        "Masakan khas Padang satu ini terbuat dari irisan daging sapi dan memiliki cita rasa gurih yang khas. Tentu tak akan lengkap ke Padang tanpa mencicipi kuliner khas Padang berkuah satu ini.",
    prices: "10.000",
  ),
  Food(
    title: "Gulai Itiak",
    image:
        "https://assets-a1.kompasiana.com/items/album/2015/06/09/143382130310392232167.jpg",
    about:
        "Jika Anda seorang penggemar kuliner lezat yang terbuat dari bebek, maka masakan khas Padang yang satu ini harus dicoba. Gulai itiak kaya akan bumbu, daging bebek ini tak hanya gurih tapi juga jauh dari aroma amis khas bebek.",
    prices: "10.000",
  ),
  Food(
    title: "Gulai Tauco",
    image: "https://omahresep.com/wp-content/uploads/2021/07/gulai-tauco.jpg",
    about:
        "Gulai tauco terbuat dari tauco yang dikombinasikan dengan berbagai rempah-rempah khas makanan Padang. Irisan buncis, tahu, dan udang juga melengkapi makanan lezat asal Padang ini.",
    prices: "8.000",
  ),
  Food(
    title: "Kalio Dagiang",
    image:
        "https://www.resepenyak.com/images/63702423-cara-mudah-membuat-kalio-daging-yang-menggugah-selera.jpg",
    about:
        "Kalio Dagiang merupakan gulai sapi yang tak kalah lezat dari Rendang. Sekilas terlihat seperti rendang, yang membedakan dua masakan khas Padang ini adalah kepekatan bumbu, dan juga Kalio Dagiang yang lebih berkuah.",
    prices: "14.000",
  ),
  Food(
    title: "Cancang",
    image:
        "https://img-global.cpcdn.com/recipes/9d0fb1f6294d02fc/680x482cq70/gulai-cancang-gulai-cincang-padang-foto-resep-utama.jpg",
    about:
        "Cancang adalah olahan daging kambing yang dipotong dadu dan dimasak dengan rempah serta santan yang memiliki cita rasa pedas. Cocok untuk Anda penggemar masakan olahan daging kambing.",
    prices: "14.000",
  ),
  Food(
    title: "Teh Talua",
    image: "https://bisniswisata.co.id/wp-content/uploads/2018/10/TEH-T.jpg",
    about:
        "Tak seperti teh pada umumnya karena teh talua ini dicampur kuning telur dan juga air jeruk nipis serta gula yang akan memberikan rasa unik dan nikmat.",
    prices: "5.000",
  ),
  Food(
    title: "Lamang Tapal",
    image: "https://cdn-2.tstatic.net/travel/foto/bank/images/lemang-tapai.jpg",
    about:
        "Memiliki cita rasa manis yang sangat khas, masakan khas Padang bernama lamang tapal ini merupakan makanan tradisional khas Minang yang terbuat dari beras ketan. Tekstur kenyal dan rasa manisnya cocok untuk dijadikan sebagai makanan pembuka.",
    prices: "8.000",
  ),
  Food(
    title: "Galamal",
    image:
        "https://www.saribundo.biz/wp-content/uploads/2021/09/galamai-e1630539302973.jpeg",
    about:
        "Makanan ringan manis khas Padang selanjutnya adalah Galamai yang terkenal berasal dari Payakumbuh. Makanan khas Minang satu ini memiliki tekstur dan rasa yang menyerupai dodol yang terdapat di daerah Nusantara lainnya.",
    prices: "5.000",
  ),
  Food(
    title: "Asam Padeh",
    image:
        "https://images.genpi.co/uploads/arsip/normal/2021/06/04/ikan-tongkol-asam-padeh-foto-towy.jpg",
    about:
        "asam padeh ini sama sekali tak menggunakan santan dalam masakannya. Namun, masih tetap kaya akan bumbu dan rempah. Bercitarasa asam dan pedas, kuliner yang umumnya menggunakan ikan tongkol ini memberikan sensasi segar yang menggugah selera.",
    prices: "9.000",
  ),
  Food(
    title: "Ayam Pop",
    image:
        "https://www.masakapahariini.com/wp-content/uploads/2018/06/AYAM-POP-FINAL-DISH.jpg",
    about:
        "Ayam pop adalah makanan khas Padang lain yang kerap dipesan di rumah makan Padang selain rendang. Terlihat sederhana, namun ayam pop memiliki cita rasa gurih yang kaya rempah dan sangat nikmat disantap bersama nasi hangat dan sambal Padang.",
    prices: "10.000",
  ),
];
