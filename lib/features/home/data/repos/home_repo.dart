import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/bookly_model/bookly_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BooklyModel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BooklyModel>>> fetchFeaturedBooks();
}
