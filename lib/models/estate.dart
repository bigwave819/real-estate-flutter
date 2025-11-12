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
      'https://images.unsplash.com/photo-1580587771525-78b9dba3b914',
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
      'https://images.unsplash.com/photo-1526676037777-349b5be1e06b',
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
      'https://images.unsplash.com/photo-1613977257362-3f3e5a2af61f',
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
      'https://images.unsplash.com/photo-1603791452906-bb9cb1e9c24e',
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
      'https://images.unsplash.com/photo-1601924579537-371e9b6ecb8b',
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
      'https://images.unsplash.com/photo-1605719125066-6f9a9a6e13b1',
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
      'https://images.unsplash.com/photo-1600585154154-3d7f0bb0a3fa',
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
      'https://images.unsplash.com/photo-1580587771525-78b9dba3b914',
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
      'https://images.unsplash.com/photo-1600585154154-3d7f0bb0a3fa',
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
      'https://images.unsplash.com/photo-1613977257164-35e0acb2b2d1',
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
      'https://images.unsplash.com/photo-1613977257030-5ce7c5dc3cb7',
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
      'https://images.unsplash.com/photo-1507679799987-c73779587ccf',
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
      'https://images.unsplash.com/photo-1503387762-592deb58ef4e',
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
      'https://images.unsplash.com/photo-1581090700227-1e37b190418e',
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
      'https://images.unsplash.com/photo-1566073771259-6a8506099945',
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
      'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',
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
      'https://images.unsplash.com/photo-1600047509807-ba8f99d2cdde',
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
      'https://images.unsplash.com/photo-1570129477492-45c003edd2be',
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
      'https://images.unsplash.com/photo-1590642914600-9c9a661f74d5',
    ],
  ),
];
