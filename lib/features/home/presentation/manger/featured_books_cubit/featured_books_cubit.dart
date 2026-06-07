import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/bookly_model/bookly_model.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FueturedBooksCubit extends Cubit<FueturedBooksState> {
  FueturedBooksCubit() : super(FueturedBooksInitial());
}
