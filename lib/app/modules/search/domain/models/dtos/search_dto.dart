class SearchDto {
  SearchDto({
    required this.id,
    required this.image,
    required this.name,
  });

  final String id;
  final String image;
  final String name;

  factory SearchDto.fromMap(Map<String, dynamic> map) => SearchDto(
        id: map['id'],
        image: map['image'],
        name: map['name'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'image': image,
        'name': name,
      };
}
