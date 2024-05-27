class TipDto {
  TipDto({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
  });

  final String id;
  final String title;
  final String description;
  final String image;

  factory TipDto.fromMap(Map<String, dynamic> map) => TipDto(
        id: map['id'],
        image: map['image'],
        title: map['title'],
        description: map['description'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'image': image,
        'title': title,
        'description': description,
      };
}
