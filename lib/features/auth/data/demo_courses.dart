import 'package:digital_projucti/features/auth/domain/entities/course.dart';

class DemoCourses {
  static List<Course> courses = [
    Course(
      title: "Flutter for Beginners",
      instructor: "Aisha Rahman",
      rating: 4.7,
      videos: 28,
      hours: 12,
      lessons: 20,
      price: 30,
      tag: "Best Sellers",
    ),
    Course(
      title: "Flutter UI Masterclass",
      instructor: "Jamal Uddin",
      rating: 4.9,
      videos: 40,
      hours: 18,
      lessons: 30,
      price: 45,
      tag: "Recommended",
    ),
    Course(
      title: "Flutter & Firebase Integration",
      instructor: "Mehedi Hasan",
      rating: 4.8,
      videos: 32,
      hours: 14,
      lessons: 26,
      price: 38,
      tag: "Popular",
    ),
    Course(
      title: "Advanced Flutter Animations",
      instructor: "Rafiq Khan",
      rating: 4.6,
      videos: 25,
      hours: 10,
      lessons: 18,
      price: 28,
      tag: "Trending",
    ),
    Course(
      title: "Flutter State Management (Provider, BLoC, Riverpod)",
      instructor: "Sadia Akter",
      rating: 4.9,
      videos: 35,
      hours: 16,
      lessons: 27,
      price: 42,
      tag: "Best Sellers",
    ),
  ];
}
