import 'package:bookly_app/core/Utils/api_service.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/bookly_model/bookly_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiSrevice;

  HomeRepoImpl(this.apiSrevice);
  @override
  Future<Either<Failure, List<BooklyModel>>> fetchBooks() async {
    try {
      var data = await apiSrevice.get(
        endPoind: 'search-books?query=books+about+programming',
      );
      List<BooklyModel> books = [];
      for (var item in data['books']) {
        books.add(BooklyModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BooklyModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiSrevice.get(
        endPoind: 'search-books?query=books+about+programming',
      );
      List<BooklyModel> books = [];
      for (var item in data['books']) {
        books.add(BooklyModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }
}
