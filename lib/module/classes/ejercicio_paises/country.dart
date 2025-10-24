class Country {
  final List<String> tld;
  final String cca2;
  final String cca3;
  final String ccn3;
  final String cioc;
  final bool independent;
  final String status;
  final bool unMember;
  final String region;
  final String subregion;
  final List<String> capital;
  final double area;
  final int population;
  final List<double> latlng;
  final List<String> borders;
  final String flag;
  final String fifa;
  final bool landlocked;
  final List<String> timezones;
  final List<String> continents;

  Country({
    required this.tld,
    required this.cca2,
    required this.cca3,
    required this.ccn3,
    required this.cioc,
    required this.independent,
    required this.status,
    required this.unMember,
    required this.region,
    required this.subregion,
    required this.capital,
    required this.area,
    required this.population,
    required this.latlng,
    required this.borders,
    required this.flag,
    required this.fifa,
    required this.landlocked,
    required this.timezones,
    required this.continents,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      tld: List<String>.from(json['tld'] ?? []),
      cca2: json['cca2'] ?? '',
      cca3: json['cca3'] ?? '',
      ccn3: json['ccn3'] ?? '',
      cioc: json['cioc'] ?? '',
      independent: json['independent'] ?? false,
      status: json['status'] ?? '',
      unMember: json['unMember'] ?? false,
      region: json['region'] ?? '',
      subregion: json['subregion'] ?? '',
      capital: List<String>.from(json['capital'] ?? []),
      area: (json['area'] ?? 0).toDouble(),
      population: json['population'] ?? 0,
      latlng:
          (json['latlng'] as List?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          [],
      borders: List<String>.from(json['borders'] ?? []),
      flag: json['flag'] ?? '',
      fifa: json['fifa'] ?? '',
      landlocked: json['landlocked'] ?? false,
      timezones: List<String>.from(json['timezones'] ?? []),
      continents: List<String>.from(json['continents'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'tld': tld,
      'cca2': cca2,
      'cca3': cca3,
      'ccn3': ccn3,
      'cioc': cioc,
      'independent': independent,
      'status': status,
      'unMember': unMember,
      'region': region,
      'subregion': subregion,
      'capital': capital,
      'area': area,
      'population': population,
      'latlng': latlng,
      'borders': borders,
      'flag': flag,
      'fifa': fifa,
      'landlocked': landlocked,
      'timezones': timezones,
      'continents': continents,
    };
  }
}
