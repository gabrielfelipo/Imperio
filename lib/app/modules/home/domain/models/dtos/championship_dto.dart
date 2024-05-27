class ChampionshipDto {
  ChampionshipDto({
    required this.id,
    required this.image,
    required this.name,
    required this.createdAt,
  });

  final String id;
  final String image;
  final String name;
  final String createdAt;

  factory ChampionshipDto.fromMap(Map<String, dynamic> map) => ChampionshipDto(
        id: map['id'],
        image: map['image'],
        name: map['name'],
        createdAt: map['createdAt'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'image': image,
        'name': name,
        'createdAt': createdAt,
      };
}
