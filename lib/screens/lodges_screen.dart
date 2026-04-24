import 'package:flutter/material.dart';

class LodgesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lodges & Accommodation'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
              ),
              onSubmitted: (value) {
                // Implement search functionality
              },
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          HotelCard(
            name: 'Ocean View Hotel',
            price: 200,
            rating: 4.5,
            onBook: () {
              // Implement booking functionality
            },
          ),
          HotelCard(
            name: 'Mountain Retreat',
            price: 150,
            rating: 4.0,
            onBook: () {
              // Implement booking functionality
            },
          ),
          // Add more HotelCard widgets here
        ],
      ),
    );
  }
}

class HotelCard extends StatelessWidget {
  final String name;
  final double price;
  final double rating;
  final VoidCallback onBook;

  HotelCard({required this.name, required this.price, required this.rating, required this.onBook});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text('\$${price.toStringAsFixed(2)} per night', style: TextStyle(fontSize: 16)),
            SizedBox(height: 5),
            Text('Rating: ${rating.toString()}', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: onBook,
              child: Text('Book Now'),
            ),
          ],
        ),
      ),
    );
  }
}