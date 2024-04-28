import 'package:fpdart/fpdart.dart';
import 'package:kids_finance/core/utils/failure.dart';

import '../dtos/course.dart';

abstract class CourseRemoteDataSource {
  Future<Either<IFailure, List<CourseDTO>>> getAll();
  Future<Either<IFailure, CourseDTO>> getById(int courseId);
}