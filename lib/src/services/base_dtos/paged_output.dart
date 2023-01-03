/// paged result ouput dto
class PagedOuput<T> {
  ///
  PagedOuput({
    required this.totalCount,
    required this.items,
  });

  ///
  late final int totalCount;

  ///
  late final List<T> items;
}
