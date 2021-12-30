class TermRepository {

  final List<Term> terms = [
    Term("Tasarım", "Prototip", "Kerem Alan", "https://www.upload.ee/image/13740439/prototypeTerm__5_.png", "İlk model, örnek", "fff", "fufufu"),
    Term("Tasarım", "Frototip", "Kerem Alan", "https://www.upload.ee/image/13740439/prototypeTerm__5_.png", "anl22amı", "fffeef", "fufufufuf"),
    Term("Tasarım", "Brototip", "Kerem Alan", "https://www.upload.ee/image/13740439/prototypeTerm__5_.png", "anl22amı", "fqowqo", "qweo12o"),
  ];

}

class Term {
  String categoryName;
  String termName;
  String termAuthor;
  String termImageUrl;
  String termMean;
  String termExample;
  String termDescription;

  Term(this.categoryName, this.termName, this.termAuthor, this.termImageUrl, this.termMean, this.termExample, this.termDescription);
}