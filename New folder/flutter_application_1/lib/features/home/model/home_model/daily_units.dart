class DailyUnits {
  String? time;
  String? sunrise;
  String? sunset;
  String? daylightDuration;
  String? sunshineDuration;
  String? temperature2mMax;
  String? temperature2mMin;

  DailyUnits({
    this.time,
    this.sunrise,
    this.sunset,
    this.daylightDuration,
    this.sunshineDuration,
    this.temperature2mMax,
    this.temperature2mMin,
  });

  factory DailyUnits.fromJson(Map<String, dynamic> json) => DailyUnits(
    time: json['time'] as String?,
    sunrise: json['sunrise'] as String?,
    sunset: json['sunset'] as String?,
    daylightDuration: json['daylight_duration'] as String?,
    sunshineDuration: json['sunshine_duration'] as String?,
    temperature2mMax: json['temperature_2m_max'] as String?,
    temperature2mMin: json['temperature_2m_min'] as String?,
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
