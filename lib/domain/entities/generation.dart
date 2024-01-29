class Generation {
  const Generation({
    required this.title,
    required this.imagePath,
    required this.offset,
    required this.limit
  });

  final String imagePath;
  final String title;
  final int offset;
  final int limit;
}