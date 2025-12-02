class Daily {
  List<String>? time;
  List<String>? sunrise;
  List<String>? sunset;
  List<double>? daylightDuration;
  List<num>? sunshineDuration;
  List<double>? temperature2mMax;
  List<num>? temperature2mMin;

  Daily({
    this.time,
    this.sunrise,
    this.sunset,
    this.daylightDuration,
    this.sunshineDuration,
    this.temperature2mMax,
    this.temperature2mMin,
  });

  factory Daily.fromJson(Map<String, dynamic> json) => Daily(
    time: json['time'] as List<String>?,
    sunrise: json['sunrise'] as List<String>?,
    sunset: json['sunset'] as List<String>?,
    daylightDuration: json['daylight_duration'] as List<double>?,
    sunshineDuration: json['sunshine_duration'] as List<num>?,
    temperature2mMax: json['temperature_2m_max'] as List<double>?,
    temperature2mMin: json['temperature_2m_min'] as List<num>?,
  );

  Map<String, dynamic> toJson() => {
    'time': time,
    'sunrise': sunrise,
    'sunset': sunset,
    'daylight_duration': daylightDuration,
    'sunshine_duration': sunshineDuration,
    'temperature_2m_max': temperature2mMax,
    'temperature_2m_min': temperature2mMin,
  };
}
