class CurrentUnits {
  String? time;
  String? interval;
  String? temperature2m;
  String? isDay;
  String? rain;

  CurrentUnits({
    this.time,
    this.interval,
    this.temperature2m,
    this.isDay,
    this.rain,
  });

  factory CurrentUnits.fromJson(Map<String, dynamic> json) => CurrentUnits(
    time: json['time'] as String?,
    interval: json['interval'] as String?,
    temperature2m: json['temperature_2m'] as String?,
    isDay: json['is_day'] as String?,
    rain: json['rain'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'time': time,
    'interval': interval,
    'temperature_2m': temperature2m,
    'is_day': isDay,
    'rain': rain,
  };
}
