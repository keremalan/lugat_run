class User {
  final String username;
  final String name;
  final String userEmail;
  final String createdDate;
  final String userTitle;
  final String userCompany;
  final String userAvatar;
  final int userPhone;
  final bool isAdmin;
  final bool isModerator;
  final bool verified;
  final bool isCompany;

  User(
      this.username,
      this.name,
      this.userEmail,
      this.userPhone,
      this.createdDate,
      this.isAdmin,
      this.isModerator,
      this.userTitle,
      this.userCompany,
      this.userAvatar,
      this.verified,
      this.isCompany,
      );
}