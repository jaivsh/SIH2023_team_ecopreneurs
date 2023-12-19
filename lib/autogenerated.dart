import 'dart:convert';
import 'package:http/http.dart' as http;

class Book {
  String name;
  String product;
  double price;
  double externalPrice;
  String description;
  String images;
  String category;

  Book({
    required this.name,
    required this.product,
    required this.price,
    required this.externalPrice,
    required this.description,
    required this.images,
    required this.category,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      name: json['Name'] ?? '',
      product: json['product'] ?? '',
      price: json['price']?.toDouble() ?? 0.0,
      externalPrice: json['External_price']?.toDouble() ?? 0.0,
      description: json['Description'] ?? '',
      images: json['Images'] ?? '',
      category: json['category'] ?? '',
    );
  }


}

Future<List<Book>> fetchBooks() async {
  final response = await http.get(
      Uri.parse('https://script.googleusercontent.com/macros/echo?user_content_key=oGFMhML7Uxgmk_fqwS6yLEu5xa5Vt4YFxe9LCyJ7pWyOK9qpJUzVtDIPgRqNAsxqklds_TZtZ4qJdbmnhtI0dfSmhUcCpQHQm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnCYeyrODuYwlFVuUQVZfrKqejKMycKQY5Ko-AsQn0VDu_N93VfzDp0p32pziMZ5ytshrkaDr_l6VCGZl6SMNQVUTVYPRCViul9z9Jw9Md8uu&lib=MCyoCx4Qt_Jh7a1mH3iRxt4AnPvVPRreW'));

  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body);
    return data.map((json) => Book.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load books');
  }
}



