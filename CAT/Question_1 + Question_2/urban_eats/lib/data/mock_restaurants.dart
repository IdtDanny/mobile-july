import 'package:urban_eats/models/menu_item.dart';
import 'package:urban_eats/models/restaurant.dart';

final List<Restaurant> mockResto = [
  Restaurant(
    id: 'res-001', 
    name: 'The Golden Spoon', 
    cuisine: 'Italian', 
    address: '123 Main St, Metropolis', 
    rating: 4.7, 
    imageUrl: 'https://picsum.photos/seed/laptop/600/400', 
    menu: [
      MenuItem(
        id: 'menu-001', 
        name: 'Spaghetti Carbonara', 
        price: 18.99
      ),
      MenuItem(
        id: 'menu-002', 
        name: 'Spicy Chicken', 
        price: 15.0
      ),
      MenuItem(
        id: 'menu-003', 
        name: 'Special Omlet', 
        price: 5.0
      ),
    ],
  ),

  Restaurant(
    id: 'res-002', 
    name: 'The Great Chinese', 
    cuisine: 'Chinesse', 
    address: '45 Near St, Manhattan', 
    rating: 3.1, 
    imageUrl: 'https://picsum.photos/seed/chair/600/400', 
    menu: [
      MenuItem(
        id: 'menu-001', 
        name: 'Chinesse Veg', 
        price: 7.99
      ),
      MenuItem(
        id: 'menu-002', 
        name: 'Spicy Pork', 
        price: 10.0
      ),
      MenuItem(
        id: 'menu-003', 
        name: 'Beef Meat', 
        price: 8.3
      ),
    ],
  ),

  Restaurant(
    id: 'res-003', 
    name: 'Downtown Resto-Bar', 
    cuisine: 'American', 
    address: '24 St, ChinaTown', 
    rating: 8.7, 
    imageUrl: 'https://picsum.photos/seed/kigali/600/400', 
    menu: [
      MenuItem(
        id: 'menu-001', 
        name: 'Bugger', 
        price: 2.99
      ),
      MenuItem(
        id: 'menu-002', 
        name: 'Iced Coffee', 
        price: 6.2
      ),
      MenuItem(
        id: 'menu-003', 
        name: 'Veggie', 
        price: 4.12
      ),
    ],
  ),

  Restaurant(
    id: 'res-004', 
    name: 'The Charlet Roll', 
    cuisine: 'French', 
    address: 'St Peter, Uphill Town', 
    rating: 9.7, 
    imageUrl: 'https://picsum.photos/seed/music/600/400', 
    menu: [
      MenuItem(
        id: 'menu-001', 
        name: 'French Fries', 
        price: 5.56
      ),
      MenuItem(
        id: 'menu-002', 
        name: 'French Sweets', 
        price: 11.9
      ),
      MenuItem(
        id: 'menu-003', 
        name: 'Cream', 
        price: 12.2
      ),
    ],
  ),

  Restaurant(
    id: 'res-005', 
    name: 'The Urban Park Muse', 
    cuisine: 'Kenyan', 
    address: 'Downtown NY', 
    rating: 5.2, 
    imageUrl: 'https://picsum.photos/seed/town/600/400', 
    menu: [
      MenuItem(
        id: 'menu-001', 
        name: 'Cheesed Omelet', 
        price: 1.99
      ),
      MenuItem(
        id: 'menu-002', 
        name: 'Ice Cream', 
        price: 6.2
      ),
      MenuItem(
        id: 'menu-003', 
        name: 'Big Burger', 
        price: 8.2
      ),
    ],
  ),
];