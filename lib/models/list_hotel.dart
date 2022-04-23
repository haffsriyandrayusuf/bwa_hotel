class Hotel {
  final String image, name, location;
  final String jarak, rating;
  final int price;

  Hotel({
    required this.image,
    required this.name,
    required this.location,
    required this.rating,
    required this.jarak,
    required this.price,
  });
}

List<Hotel> listHotel = [
  Hotel(
    image: 'assets/images/hotel1.png',
    name: 'Bimosaurus Hotel',
    location: 'Safari, Buitenzorg',
    rating: '4.9',
    jarak: '',
    price: 599999,
  ),
  Hotel(
    image: 'assets/images/hotel2.png',
    name: 'Daino Sas Hotel',
    location: 'Bali, Denpasar',
    rating: '4.7',
    jarak: '',
    price: 499999,
  ),
  Hotel(
    image: 'assets/images/hotel3.png',
    name: 'Skytown Hotel',
    location: 'Sibolga, Medan',
    rating: '4.8',
    jarak: '',
    price: 499999,
  ),
  Hotel(
    image: 'assets/images/hotel4.png',
    name: 'GH Setiabuddy',
    location: 'Setiabuddy, Bandung',
    rating: '4.8',
    jarak: '0,1km',
    price: 469999,
  ),
  Hotel(
    image: 'assets/images/hotel5.png',
    name: 'Damsaurus Hotel',
    location: 'Bali, Denpasar',
    rating: '4.7',
    jarak: '1,6km',
    price: 489999,
  ),
  Hotel(
    image: 'assets/images/hotel6.png',
    name: 'Andjoy Hotel',
    location: 'Kebon Jaty, Bandung',
    rating: '4.9',
    jarak: '2,2km',
    price: 599999,
  ),
];
