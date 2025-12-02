class HourlyUnits {
  String? time;
  String? temperature2m;
  String? relativeHumidity2m;
  String? rain;
  String? apparentTemperature;
  String? precipitationProbability;
  String? precipitation;

  HourlyUnits({
    this.time,
    this.temperature2m,
    this.relativeHumidity2m,
    this.rain,
    this.apparentTemperature,
    this.precipitationProbability,
    this.precipitation,
  });

  factory HourlyUnits.fromJson(Map<String, dynamic> json) => HourlyUnits(
    time: json['time'] as String?,
    temperature2m: json['temperature_2m'] as String?,
    relativeHumidity2m: json['relative_humidity_2m'] as String?,
    rain: json['rain'] as String?,
    apparentTemperature: json['apparent_temperature'] as String?,
    precipitationProbability: json['precipitation_probability'] as String?,
    precipitation: json['precipitation'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'time': time,
    'temperature_2m': temperature2m,
    'relative_humidity_2m': relativeHumidity2m,
    'rain': rain,
    'apparent_temperature': apparentTemperature,
    'precipitation_probability': precipitationProbability,
    'precipitation': precipitation,
  };
}
