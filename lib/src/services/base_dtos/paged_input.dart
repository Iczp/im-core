/// paged request input dto
class PagedInput {
  ///
  PagedInput({
    this.maxResultCount = 10,
    this.skipCount,
    this.sorting,
    this.keyword,
  });

  ///
  late final int maxResultCount;

  ///
  late final int? skipCount;

  ///
  late final String? sorting;

  ///
  late final String? keyword;
}
