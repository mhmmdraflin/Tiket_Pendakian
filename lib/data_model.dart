class Event {
  final String title;
  final String category;
  final String date;
  final String status;
  final List<String> images;
  final String description;
  final double price;

  Event({
    required this.title,
    required this.category,
    required this.date,
    required this.status,
    required this.images,
    required this.description,
    required this.price,
  });
}

final List<Event> allEvents = [
  Event(
    title: 'Open Trip Semeru 3D2N',
    category: 'Hiking',
    date: 'Berangkat Malam Ini, 20:00',
    status: 'now',
    images: [
      'https://indonesiakaya.com/wp-content/uploads/2020/10/gunung-semeru-1200.jpg',
      'https://www.indonesia.travel/contentassets/fccf2886df7947b48d095c0bae15fd0c/gunung-semeru.jpeg',
    ],
    description: 'Pendakian atap pulau Jawa, Gunung Semeru (Mahameru). Nikmati keindahan Ranu Kumbolo yang memukau.',
    price: 850000,
  ),
  Event(
    title: 'Bromo Midnight Tour',
    category: 'Tour',
    date: 'Malam Ini, 23:00',
    status: 'now',
    images: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRP011TceI98LJMKLrgt67c4qqlPaA_-8G5Q&s',
      'https://haryonotours.com/assets/tour/img/NOT2407001/1400.jpg',
    ],
    description: 'Saksikan Golden Sunrise terbaik di Indonesia tanpa perlu mendaki berat. Full fasilitas Jeep.',
    price: 350000,
  ),
  Event(
    title: 'Ekspedisi Rinjani 4D3N',
    category: 'Expedition',
    date: '10 Feb 2026',
    status: 'soon',
    images: [
      'https://cdn.antaranews.com/cache/1200x800/2025/06/28/1000407980.jpg',
      'https://asset.kompas.com/crops/xwjqRL0Oo0P7iPgDvm3DdybZGgE=/0x0:1748x1165/1200x800/data/photo/2025/06/26/685cdc555ed1b.png',
    ],
    description: 'Menaklukan gunung terindah di Indonesia. Paket lengkap via Sembalun, lintas Senaru.',
    price: 2500000,
  ),
  Event(
    title: 'Camping Ceria G. Prau',
    category: 'Camping',
    date: '14 Feb 2026',
    status: 'soon',
    images: [
      'https://asset.kompas.com/crops/4a4gz_AwNbNrtxXfIJyILREU7EQ=/0x0:800x533/1200x800/data/photo/2018/12/03/367871321.jpg',
      'https://asset.kompas.com/crops/Ha04qzdGitrueHuj7WlkuEDNMWA=/0x0:1800x1200/375x240/data/photo/2022/08/07/62ef3f9c2846d.jpg',
    ],
    description: 'Cocok untuk pemula! Camping santai menikmati sunrise dengan view Sindoro Sumbing.',
    price: 400000,
  ),
  Event(
    title: 'Tektok Gunung Gede',
    category: 'Hiking',
    date: 'Pagi Ini, 05:00',
    status: 'now',
    images: [
      'https://lh4.googleusercontent.com/proxy/gsZaAiIkzTlWzAHGnuOMts3Wo-h_3XNhwBC104n8i5OMw_hh9FyZseYPvtt9MDiBzwkARlkmVSvjjifvdpBAepWhJtRLqaW6EvXg9L-Wo6U',
      'https://beautyofindonesia.com/asset-user/uploads/foto_wisata/GUNUNG-GEDE--KABUPATEN-CIANJUR.jpg',
    ],
    description: 'Pendakian cepat satu hari (Tektok) ke puncak Gunung Gede. Khusus yang fisik prima.',
    price: 150000,
  ),
  Event(
    title: 'Merbabu via Suwanting',
    category: 'Hiking',
    date: '20 Feb 2026',
    status: 'soon',
    images: [
      'https://alera.id/wp-content/uploads/2024/11/Gunung-Merbabu-Via-Suwanting-SC-IG-suwanting.merbabu--819x1024.jpg',
      'https://thumb.viva.id/vivasemarang/1265x711/2025/05/20/682c74c3e201a-pemandangan-gunung-gunung-dari-puncak-merbabu_semarang.jpg',
    ],
    description: 'Jalur yang menantang dengan pemandangan sabana yang luar biasa indah di Merbabu.',
    price: 600000,
  ),
  Event(
    title: 'Ijen Blue Fire',
    category: 'Tour',
    date: 'Malam Ini, 00:00',
    status: 'now',
    images: [
      'https://phinemo.com/wp-content/uploads/2019/09/75879-1024x681.jpg',
      'https://i.pinimg.com/736x/c0/01/87/c0018704927fc7de25d913fed7c422c5.jpg',
    ],
    description: 'Fenomena api biru langka yang hanya ada dua di dunia. Wajib dikunjungi sekali seumur hidup.',
    price: 300000,
  ),
  Event(
    title: 'Atap Sumatera: Kerinci',
    category: 'Expedition',
    date: '01 Mar 2026',
    status: 'soon',
    images: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTipumcb2-VIoXOWz_Kaorqa4TwiXrAAWVEMg&s',
      'https://alamendah.org/wp-content/uploads/2013/11/gunung-kerinci.jpg',
    ],
    description: 'Pendakian ke gunung berapi tertinggi di Indonesia. Uji adrenalinmu di sini.',
    price: 1800000,
  ),
  Event(
    title: 'Family Camp Papandayan',
    category: 'Camping',
    date: '05 Mar 2026',
    status: 'soon',
    images: [
      'https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/08/04/685880356.png',
      'https://satyawinnie.com/wp-content/uploads/2016/08/Sarapan-Gunung-Papandayan-1024x640.jpg',
    ],
    description: 'Camping ceria ramah anak dan keluarga. Menikmati hutan mati dan kawah belerang.',
    price: 350000,
  ),
  Event(
    title: 'Carstensz Pyramid',
    category: 'VVIP Expedition',
    date: '10 Apr 2026',
    status: 'soon',
    images: [
      'https://img.inews.co.id/media/1200/files/inews_new/2025/03/02/puncak_carstensz.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBPUo0HXZnNxesII5jirLLFA17h0MmlWEDtQ&s',
    ],
    description: 'Ekspedisi premium ke puncak tertinggi Oseania. Salju abadi di negara tropis.',
    price: 55000000,
  ),
];