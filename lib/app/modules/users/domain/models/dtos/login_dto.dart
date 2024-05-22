class LoginDto {
  LoginDto({
    required this.authToken,
    required this.refreshToken,
  });

  final String authToken;
  final String refreshToken;

  factory LoginDto.fromMap(Map map) => LoginDto(
        authToken: map['authToken'],
        refreshToken: map['refreshToken'],
      );

  Map<String, dynamic> toMap() => {
        'authToken': authToken,
        'refreshToken': refreshToken,
      };
}
