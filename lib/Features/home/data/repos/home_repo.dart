
import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../model_test.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}