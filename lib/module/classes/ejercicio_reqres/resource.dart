class Resource {
  final int id;
  final String name;
  final int year;
  final String color;
  final String pantoneValue;

  Resource({
    required this.id,
    required this.name,
    required this.year,
    required this.color,
    required this.pantoneValue,
  });

  factory Resource.fromJson(Map<String, dynamic> json) {
    return Resource(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      year: json['year'] ?? 0,
      color: json['color'] ?? '',
      pantoneValue: json['pantone_value'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'year': year,
      'color': color,
      'pantone_value': pantoneValue,
    };
  }

  @override
  String toString() {
    return 'Resource(id: $id, name: $name, year: $year, color: $color, pantoneValue: $pantoneValue)';
  }
}
