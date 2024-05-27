class BonusDto {
  BonusDto({
    required this.id,
    required this.platform,
    required this.discount,
  });

  final String id;
  final String platform;
  final String discount;

  factory BonusDto.fromMap(Map<String, dynamic> map) => BonusDto(
        id: map['id'],
        platform: map['platform'],
        discount: map['discount'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'platform': platform,
        'discount': discount,
      };
}
