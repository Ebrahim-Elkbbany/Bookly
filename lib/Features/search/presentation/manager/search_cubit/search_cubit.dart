import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  SearchRepo searchRepo;
  List<BookModel> books =[];

  Future<void> fetchBooksSearch(String searchText) async {
    emit(SearchLoading());
    var fetchBooksSearchResult = await searchRepo.fetchSearchBooks(searchName:searchText );
    fetchBooksSearchResult.fold(
      (failure) {
        emit(SearchFailure(failure.errorMessage));
      },
      (r) {
        books=r;
        emit(SearchSuccess(books));
      },
    );
  }
}
