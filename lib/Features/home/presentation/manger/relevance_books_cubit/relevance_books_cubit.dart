import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'relevance_books_state.dart';

class RelevanceBooksCubit extends Cubit<RelevanceBooksState> {
  RelevanceBooksCubit(this.homeRepo) : super(RelevanceBooksInitial());
  HomeRepo homeRepo;

  Future<void> fetchRelevanceBooks() async {
    var fetchRelevanceBooksResult =
        await homeRepo.fetchRelevanceBooks();
    fetchRelevanceBooksResult.fold((failure) {
      emit(
        RelevanceBooksFailure(failure.errorMessage),
      );
    }, (books) {
      emit(
        RelevanceBooksSuccess(books),
      );
    });
  }
}
