class Current {
  String? time;
  int? interval;
  int? temperature2m;
  int? isDay;
  int? rain;

  Current({
    this.time,
    this.interval,
    this.temperature2m,
    this.isDay,
    this.rain,
  });

  factory Current.fromJson(Map<String, dynamic> json) => Current(
    time: json['time'] as String?,
    interval: json['interval'] as int?,
    temperature2m: json['temperature_2m'] as int?,
    isDay: json['is_day'] as int?,
    rain: json['rain'] as int?,
  );

  Map<String, dynamic> toJson() => {
    'time': time,
    'interval': interval,
    'temperature_2m': temperature2m,
    'is_day': isDay,
    'rain': rain,
  };
}
