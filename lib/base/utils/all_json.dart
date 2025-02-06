List<Map<String, dynamic>> hotelList = [
  {
    'image': 'hotel_room.png',
    'place': 'Open Space',
    'destination': 'London',
    'price': 25
  },
  {
    'image': 'city_view.png',
    'place': 'Global Will',
    'destination': 'London',
    'price': 40
  },
  {
    'image': 'pool_view.png',
    'place': 'Best pool in the city',
    'destination': 'Dubai',
    'price': 68
  },
];

List<Map<String, dynamic>> ticketList = [
  {
    'from': {'code': "NYC", 'name': "New York"},
    'to': {'code': "LDN", 'name': "London"},
    'flying_time': '8H 30M',
    'date': "1 MAY",
    'departure_time': "08:00 AM",
    "number": 23
  },
  {
    'from': {'code': "DK", 'name': "Dhaka"},
    'to': {'code': "SH", 'name': "Shanghai"},
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time': "09:00 AM",
    "number": 45
  },
  {
    'from': {'code': "LAX", 'name': "Los Angeles"},
    'to': {'code': "SYD", 'name': "Sydney"},
    'flying_time': '15H 30M',
    'date': "15 JUN",
    'departure_time': "10:30 PM",
    "number": 12
  },
  {
    'from': {'code': "PAR", 'name': "Paris"},
    'to': {'code': "BER", 'name': "Berlin"},
    'flying_time': '1H 50M',
    'date': "5 JUL",
    'departure_time': "07:15 AM",
    "number": 34
  },
  {
    'from': {'code': "MUM", 'name': "Mumbai"},
    'to': {'code': "DXB", 'name': "Dubai"},
    'flying_time': '3H 30M',
    'date': "20 AUG",
    'departure_time': "11:45 PM",
    "number": 56
  },
  {
    'from': {'code': "SIN", 'name': "Singapore"},
    'to': {'code': "TYO", 'name': "Tokyo"},
    'flying_time': '6H 10M',
    'date': "30 SEP",
    'departure_time': "02:30 PM",
    "number": 78
  },
  {
    'from': {'code': "BKK", 'name': "Bangkok"},
    'to': {'code': "HKG", 'name': "Hong Kong"},
    'flying_time': '2H 30M',
    'date': "18 DEC",
    'departure_time': "08:45 AM",
    "number": 67
  },
  {
    'from': {'code': "MEX", 'name': "Mexico City"},
    'to': {'code': "LAX", 'name': "Los Angeles"},
    'flying_time': '4H 50M',
    'date': "24 DEC",
    'departure_time': "01:00 PM",
    "number": 32
  }
];

class AppRoutes {
  static const homePage = "/";

  static const allTickets = "/all_tickets";

  static const ticketScreen = "/ticket_screen";

  static const allHotels = "/all_hotels";

  static const hotelDetail = "/hotel_detail";
}
