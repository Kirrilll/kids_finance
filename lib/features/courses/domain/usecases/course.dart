// import 'package:kids_finance/features/courses/data/dtos/course_progress.dart';
// import 'package:kids_finance/features/courses/data/dtos/lesson_progress.dart';
// import 'package:kids_finance/features/courses/data/mappers/course_progress_mapper.dart';
// import 'package:kids_finance/features/courses/data/repositories/course.dart';
// import 'package:kids_finance/features/courses/data/repositories/course_progress.dart';
// import 'package:kids_finance/features/courses/domain/entity/course.dart';

// abstract interface class CourseUseCase{
//   Future<List<Course>> getAllCourses();
//   Future<Course> getCourse(int id);
// }

// class DefaultCourseUseCase implements CourseUseCase{
//   DefaultCourseUseCase({
//       required this.databaseRepository,
//       required this.mockRepository
//     });

//   final CourseRepository mockRepository;
//   final CourseRepository databaseRepository;

//   @override
//   Future<List<Course>> getAllCourses() async{
//     var courses = await mockRepository.selectAll();
//     courses.addAll(await databaseRepository.selectAll());


//     var progresses = List<CourseProgressDTO>.empty();
//     for (var i = 0; i < courses.length; i++){
//       var progress = await progressRepository.load(courses[i].id);
//       progresses.add(progress);
//     }
      
//     courses.map((e) => 
//       Course(
//         id: e.id, 
//         header: e.header, 
//         logo: e.logo, 
//         description: e.description, 
//         lessons: e.lessons,
//         currentLesson: mapper.convertDTO(
//           progresses.firstWhere(
//             (element) => element.courseId == e.id
//             )
//           )
//         .lastLesson.lessonIndex));


//     return courses;
//   }
  
//   @override
//   Future<Course> getCourse(int id) {
//     mockRepository.selectById(id).then((value) => null);
//   }
// }