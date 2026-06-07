import 'package:bookly_app/features/home/data/models/bookly_model/bookly_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.homeRepo) : super(BestSellerBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(BestSellerBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure) {
        emit(BestSellerBooksFailure(failure.errMessage));
      },
      (books) {
        emit(BestSellerBooksSuccess(books));
      },
    );
  }
}
