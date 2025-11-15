class Estate {
  final String title;
  final String owner;
  final String agentStatus; // 'agent' or 'owner'
  final int number;
  final int width;
  final int height;
  final double price;
  final double area;
  final String location;
  final StatusCategory status;
  final EstateTypeCategory estateType;
  final List<String> imageUrls; // 🆕 added for remote images

  const Estate({
    required this.title,
    required this.owner,
    required this.agentStatus,
    required this.number,
    required this.width,
    required this.height,
    required this.price,
    required this.area,
    required this.location,
    required this.status,
    required this.estateType,
    required this.imageUrls,
  });
}

enum StatusCategory {
  sold,
  forRent,
  forSale,
  booked,
}

enum EstateTypeCategory {
  land,
  car,
  house,
  apartment,
  office,
  hotel,
  other,
}

// 🌍 SAMPLE DATA WITH REMOTE IMAGE URLs
final List<Estate> estates = [
  // === LAND ===
  Estate(
    title: 'Ndera Hill Plot',
    owner: 'Tresor Ltd',
    agentStatus: 'agent',
    number: 1,
    width: 30,
    height: 40,
    price: 15000,
    area: 1200,
    location: 'Ndera, Kigali',
    status: StatusCategory.forSale,
    estateType: EstateTypeCategory.land,
    imageUrls: [
      'https://kigalilife.co.rw/wp-content/uploads/2019/10/453320.jpg',
      'https://images.unsplash.com/photo-1523217582562-09d0def993a6',
      'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',
    ],
  ),
  Estate(
    title: 'Rwamagana Farm Land',
    owner: 'Hirwa Estates',
    agentStatus: 'owner',
    number: 2,
    width: 50,
    height: 50,
    price: 20000,
    area: 2500,
    location: 'Rwamagana, Rwanda',
    status: StatusCategory.sold,
    estateType: EstateTypeCategory.land,
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE7BYFyk0XGWIeR9vRjtOC73ORwqAP6ESb0Q&s',
      'https://images.unsplash.com/photo-1600585154207-3c9c8a7a3b36',
    ],
  ),
  Estate(
    title: 'Nyamata Commercial Plot',
    owner: 'Tresor Real Estate',
    agentStatus: 'agent',
    number: 3,
    width: 40,
    height: 60,
    price: 18000,
    area: 2400,
    location: 'Nyamata Town',
    status: StatusCategory.booked,
    estateType: EstateTypeCategory.land,
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqv-ccyR5gAAahIwX9_EUxX0Xyfin7z0-M1A&s',
    ],
  ),

  // === CAR ===
  Estate(
    title: 'Toyota RAV4 2021',
    owner: 'Elite Motors',
    agentStatus: 'agent',
    number: 4,
    width: 2,
    height: 1,
    price: 25000,
    area: 12,
    location: 'Remera, Kigali',
    status: StatusCategory.forSale,
    estateType: EstateTypeCategory.car,
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_GgoHRoO6BHtacEHULzOIEHiARh4wqyGiVw&s',
      'https://images.unsplash.com/photo-1617784556270-bc888dfd1a2e',
    ],
  ),
  Estate(
    title: 'Land Cruiser Prado 2018',
    owner: 'Hirwa Cars',
    agentStatus: 'owner',
    number: 5,
    width: 2,
    height: 1,
    price: 45000,
    area: 15,
    location: 'Kicukiro, Kigali',
    status: StatusCategory.sold,
    estateType: EstateTypeCategory.car,
    imageUrls: [
      'https://kigalicarrentals.com/wp-content/uploads/2020/11/4x4-car-hire-rwanda-TXL.jpg',
      'https://images.unsplash.com/photo-1601924579773-2d52c4dbb7d0',
    ],
  ),
  Estate(
    title: 'Suzuki Swift 2022',
    owner: 'QuickDrive Ltd',
    agentStatus: 'agent',
    number: 6,
    width: 2,
    height: 1,
    price: 17000,
    area: 10,
    location: 'Gisozi, Kigali',
    status: StatusCategory.forRent,
    estateType: EstateTypeCategory.car,
    imageUrls: [
      'https://kigalicarrentals.com/wp-content/uploads/2021/02/Rwanda-car-rental.jpg',
    ],
  ),

  // === HOUSE ===
  Estate(
    title: 'Luxury Villa in Nyarutarama',
    owner: 'Kigali Homes',
    agentStatus: 'agent',
    number: 7,
    width: 30,
    height: 40,
    price: 300000,
    area: 1500,
    location: 'Nyarutarama, Kigali',
    status: StatusCategory.forSale,
    estateType: EstateTypeCategory.house,
    imageUrls: [
      'https://static.wixstatic.com/media/b97df9_087c2309259c461dbffbb48afd5b3fd6~mv2.jpg/v1/fill/w_600,h_400,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/b97df9_087c2309259c461dbffbb48afd5b3fd6~mv2.jpg',
      'https://images.unsplash.com/photo-1613977257132-9b63b1f13b8f',
    ],
  ),
  Estate(
    title: 'Bungalow in Gisozi',
    owner: 'Hirwa Tresor',
    agentStatus: 'owner',
    number: 8,
    width: 25,
    height: 30,
    price: 120000,
    area: 1000,
    location: 'Gisozi, Kigali',
    status: StatusCategory.booked,
    estateType: EstateTypeCategory.house,
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8rSttEGK0FVhdow1BDccP-5ieMj7AjuuvvA&s',
    ],
  ),
  Estate(
    title: 'Family House in Kicukiro',
    owner: 'Tresor Real Estate',
    agentStatus: 'agent',
    number: 9,
    width: 28,
    height: 35,
    price: 150000,
    area: 1100,
    location: 'Kicukiro, Kigali',
    status: StatusCategory.forRent,
    estateType: EstateTypeCategory.house,
    imageUrls: [
      'https://images.unsplash.com/photo-1615874959474-d609969a20ed',
      'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',
    ],
  ),

  // === APARTMENT ===
  Estate(
    title: 'Downtown Apartment',
    owner: 'Prime Apartments Ltd',
    agentStatus: 'agent',
    number: 10,
    width: 20,
    height: 25,
    price: 80000,
    area: 600,
    location: 'City Center, Kigali',
    status: StatusCategory.forRent,
    estateType: EstateTypeCategory.apartment,
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThrmJua0j7rWrCtNBq5yNEq4cf0PIJYjJycQ&s',
    ],
  ),
  Estate(
    title: 'Kacyiru Apartment',
    owner: 'Hirwa Estates',
    agentStatus: 'owner',
    number: 11,
    width: 22,
    height: 28,
    price: 95000,
    area: 700,
    location: 'Kacyiru, Kigali',
    status: StatusCategory.forSale,
    estateType: EstateTypeCategory.apartment,
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLTDJwi5WK4uAZChV35yWFQBv_AEksJnaWug&s',
    ],
  ),
  Estate(
    title: 'Kimironko Apartments',
    owner: 'Tresor Ltd',
    agentStatus: 'agent',
    number: 12,
    width: 24,
    height: 26,
    price: 85000,
    area: 650,
    location: 'Kimironko, Kigali',
    status: StatusCategory.booked,
    estateType: EstateTypeCategory.apartment,
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR60Ca7n4rtYEC_gcrRzX8riarHYbII_nErug&s',
    ],
  ),

  // === OFFICE ===
  Estate(
    title: 'Kigali Business Tower Office',
    owner: 'Skyline Developers',
    agentStatus: 'agent',
    number: 13,
    width: 40,
    height: 60,
    price: 350000,
    area: 2400,
    location: 'Kiyovu, Kigali',
    status: StatusCategory.forRent,
    estateType: EstateTypeCategory.office,
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6AsiTUYCQt6hYGCavB9gLHoA5WBvDKH7jig&s',
    ],
  ),
  Estate(
    title: 'Downtown Office Space',
    owner: 'RwandaWork',
    agentStatus: 'owner',
    number: 14,
    width: 35,
    height: 50,
    price: 270000,
    area: 2000,
    location: 'Kigali City Center',
    status: StatusCategory.forSale,
    estateType: EstateTypeCategory.office,
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6cfLs99P2n2rjTfaSjY34RW7GhkfRwPRuew&s',
    ],
  ),
  Estate(
    title: 'Remera Plaza Office',
    owner: 'Tresor Group',
    agentStatus: 'agent',
    number: 15,
    width: 30,
    height: 40,
    price: 200000,
    area: 1800,
    location: 'Remera, Kigali',
    status: StatusCategory.booked,
    estateType: EstateTypeCategory.office,
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsblvVYNOLSObZ-oPMEpw8EvQYsjxV-YsHAw&s',
    ],
  ),

  // === HOTEL ===
  Estate(
    title: 'Serena Hotel Kigali',
    owner: 'Serena Group',
    agentStatus: 'owner',
    number: 16,
    width: 100,
    height: 80,
    price: 2000000,
    area: 8000,
    location: 'Kiyovu, Kigali',
    status: StatusCategory.forRent,
    estateType: EstateTypeCategory.hotel,
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4MVAHwWphwJUCfp3qYLN7ShqtTq4cvMkCaA&s',
      'https://images.unsplash.com/photo-1600585153837-8f982e7fd2b5',
    ],
  ),
  Estate(
    title: 'Ubumwe Grand Hotel',
    owner: 'Ubumwe Ltd',
    agentStatus: 'agent',
    number: 17,
    width: 90,
    height: 70,
    price: 1800000,
    area: 7000,
    location: 'Kigali Downtown',
    status: StatusCategory.sold,
    estateType: EstateTypeCategory.hotel,
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXQbzTnC3SSNLONV5EeAUaeSi0O2sK7sRKNQ&s',
    ],
  ),
  Estate(
    title: 'Heaven Boutique Hotel',
    owner: 'Heaven Rwanda',
    agentStatus: 'owner',
    number: 18,
    width: 85,
    height: 75,
    price: 1500000,
    area: 6500,
    location: 'Kiyovu, Kigali',
    status: StatusCategory.forSale,
    estateType: EstateTypeCategory.hotel,
    imageUrls: [
      'https://cf.bstatic.com/xdata/images/hotel/max1024x768/49612289.jpg?k=e5a6494bd2167922dc5cac14031935a04baaefaa7518b7196e867950d7c9d4a7&o=',
    ],
  ),

  // === OTHER ===
  Estate(
    title: 'Parking Space for Rent',
    owner: 'SmartPark Ltd',
    agentStatus: 'agent',
    number: 19,
    width: 20,
    height: 20,
    price: 3000,
    area: 400,
    location: 'Kicukiro, Kigali',
    status: StatusCategory.forRent,
    estateType: EstateTypeCategory.other,
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtnQtDah2a0m7WlFKQwwfprGYvJ2qVWS6DKQ&s',
    ],
  ),
  Estate(
    title: 'Event Venue Space',
    owner: 'Tresor Events',
    agentStatus: 'owner',
    number: 20,
    width: 50,
    height: 60,
    price: 25000,
    area: 3000,
    location: 'Remera, Kigali',
    status: StatusCategory.forSale,
    estateType: EstateTypeCategory.other,
    imageUrls: [
      'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4',
    ],
  ),
  Estate(
    title: 'Storage Warehouse',
    owner: 'Hirwa Logistics',
    agentStatus: 'agent',
    number: 21,
    width: 70,
    height: 80,
    price: 40000,
    area: 5000,
    location: 'Kigali Industrial Zone',
    status: StatusCategory.booked,
    estateType: EstateTypeCategory.other,
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS03OLsgcEaDgHPxb0wwSubGG0h5VfW0G2HWg&s',
    ],
  ),
];
