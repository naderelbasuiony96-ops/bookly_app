import 'package:equatable/equatable.dart';
import 'author.dart';
import 'rating.dart';

class BooklyModel extends Equatable {
  final int? id;
  final String? title;
  final String? subtitle;
  final String image;
  final List<Author>? authors;
  final List<dynamic>? genres;
  final Rating? rating;
  final int? publishDate;

  const BooklyModel({
    this.id,
    this.title,
    this.subtitle,
    required this.image,
    this.authors,
    this.genres,
    this.rating,
    this.publishDate,
  });

  factory BooklyModel.fromJson(Map<String, dynamic> json) => BooklyModel(
    id: json['id'] as int?,
    title: json['title'] as String?,
    subtitle: json['subtitle'] as String?,
    image: json['image'] as String,
    authors: (json['authors'] as List<dynamic>?)
        ?.map((e) => Author.fromJson(e as Map<String, dynamic>))
        .toList(),
    genres: json['genres'] as List<dynamic>?,
    rating: json['rating'] == null
        ? null
        : Rating.fromJson(json['rating'] as Map<String, dynamic>),
    publishDate: json['publish_date'] as int?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'subtitle': subtitle,
    'image': image,
    'authors': authors?.map((e) => e.toJson()).toList(),
    'genres': genres,
    'rating': rating?.toJson(),
    'publish_date': publishDate,
  };

  @override
  List<Object?> get props {
    return [id, title, subtitle, image, authors, genres, rating, publishDate];
  }
}
