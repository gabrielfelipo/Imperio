class LoginDto {
  LoginDto({
    required this.authToken,
    required this.refreshToken,
  });

  final String authToken;
  final String refreshToken;

  factory LoginDto.fromMap(Map<String, dynamic> map) => LoginDto(
        authToken: map['auth_token'],
        refreshToken: map['refresh_token'],
      );

  Map<String, dynamic> toMap() => {
        'authToken': authToken,
        'refreshToken': refreshToken,
      };
}
