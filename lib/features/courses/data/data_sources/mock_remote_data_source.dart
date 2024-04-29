import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/either.dart';
import 'package:kids_finance/core/utils/failure.dart';
import 'package:kids_finance/features/courses/data/data_sources/remote_course_data_source.dart';
import 'package:kids_finance/features/courses/data/dtos/chapter.dart';
import 'package:kids_finance/features/courses/data/dtos/course.dart';
import 'package:kids_finance/features/courses/data/dtos/lesson.dart';

class MockRemoteDataSource implements CourseRemoteDataSource {

  static const List<CourseDTO> _mockedData = [
    CourseDTO(id: 1, title: 'Финансовые махинации', logo: 'assets/images/courseCard4.png', description: 'Курс для быстрого старта в финансовой грамотности', lessons: [
      LessonDTO(
          id: 1,
          header: 'Ф М',
          chapters: [
            ChapterDTO(id: 1, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2)),
            ChapterDTO(id: 2, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2)),
            ChapterDTO(id: 3, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2))
          ],
          logo: 'assets/images/courseCard4.png'
      ),
      LessonDTO(
          id: 2,
          header: 'HUhsbhfshf',
          chapters: [
            ChapterDTO(id: 1, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2)),
            ChapterDTO(id: 2, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2)),
            ChapterDTO(id: 3, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2))
          ],
          logo: 'assets/images/courseCard4.png'
      ),
      LessonDTO(
          id: 3,
          header: 'HDhshsf',
          chapters: [
            ChapterDTO(id: 1, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2)),
            ChapterDTO(id: 2, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2)),
            ChapterDTO(id: 3, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2))
          ],
          logo: 'assets/images/courseCard4.png'
      ),
      LessonDTO(
          id: 7,
          header: 'HDhshsf',
          chapters: [
            ChapterDTO(id: 1, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2)),
            ChapterDTO(id: 2, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2)),
            ChapterDTO(id: 3, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2))
          ],
          logo: 'assets/images/courseCard4.png'
      ),
      LessonDTO(
          id: 8,
          header: 'HDhshsf',
          chapters: [
            ChapterDTO(id: 1, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2)),
            ChapterDTO(id: 2, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2)),
            ChapterDTO(id: 3, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2))
          ],
          logo: 'assets/images/courseCard4.png'
      ),
    ]),
    CourseDTO(id: 2, title: 'sfsfsfsfsfsf', logo: 'assets/images/courseCard4.png', description: 'Курс для быстрого старта в финансовой грамотности', lessons: [
      LessonDTO(
          id: 4,
          header: 'Ф М',
          chapters: [
            ChapterDTO(id: 1, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2)),
            ChapterDTO(id: 2, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2)),
            ChapterDTO(id: 3, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2))
          ],
          logo: 'assets/images/courseCard2.png'
      ),
      LessonDTO(
          id: 5,
          header: 'HUhsbhfshf',
          chapters: [
            ChapterDTO(id: 1, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2)),
            ChapterDTO(id: 2, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2)),
            ChapterDTO(id: 3, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2))
          ],
          logo: 'assets/images/courseCard1.png'
      ),
      LessonDTO(
          id: 6,
          header: 'HDhshsf',
          chapters: [
            ChapterDTO(id: 1, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2)),
            ChapterDTO(id: 2, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2)),
            ChapterDTO(id: 3, content: 'sbfbhfsbhfshbf', duration: Duration(minutes: 2))
          ],
          logo: 'assets/images/courseCard5.png'
      ),
    ])
  ];

  @override
  Future<Either<IFailure, List<CourseDTO>>> getAll() async {
    return await TaskEither<IFailure, List<CourseDTO>>
        .rightTask(Task(
            () => Future.delayed(const Duration(milliseconds: 200), () => _mockedData)))
        .run();
  }

  @override
  Future<Either<IFailure, CourseDTO>> getById(int courseId) {
    return TaskEither(() => Future.delayed(
        const Duration(milliseconds: 300),
         () => Either.fromNullable(
          _mockedData.where((course) => course.id == courseId).firstOrNull,
           () => const NotFoundFailure(message: 'Не удалось найти курс с таким id')))
        )
        .run();
  }
}
