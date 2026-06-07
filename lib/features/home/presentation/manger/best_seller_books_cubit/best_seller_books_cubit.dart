import 'package:bookly_app/features/home/data/models/bookly_model/bookly_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit() : super(BestSellerBooksInitial());
}
