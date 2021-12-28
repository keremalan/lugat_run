class TermRepository {

  final List<Term> terms = [
    Term("Tasarım", "Prototip", "Kerem Alan", "https://www.upload.ee/image/13740439/prototypeTerm__5_.png"),
    Term("Tasarım", "Frototip", "Kerem Alan", "https://www.upload.ee/image/13740439/prototypeTerm__5_.png"),
    Term("Tasarım", "Brototip", "Kerem Alan", "https://www.upload.ee/image/13740439/prototypeTerm__5_.png"),
  ];

}

class Term {
  String categoryName;
  String termName;
  String termAuthor;
  String termImageUrl;

  Term(this.categoryName, this.termName, this.termAuthor, this.termImageUrl);
}