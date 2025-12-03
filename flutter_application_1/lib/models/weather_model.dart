// ملف: models/weather_model.dart

class DayForecast {
  final String day; // اسم اليوم، زي "Mon"
  final String temperature; // درجة الحرارة، زي "19°"
  final String iconPath; // مسار أيقونة اليوم

  DayForecast({
    required this.day,
    required this.temperature,
    required this.iconPath,
  });
}

class WeatherData {
  final String location; // الموقع، زي "North America"
  final String maxTemp; // أعلى درجة حرارة
  final String minTemp; // أقل درجة حرارة
  final List<DayForecast> weeklyForecast; // توقعات الأيام السبعة
  final String airQuality; // جودة الهواء
  final String sunrise; // وقت الشروق
  final String sunset; // وقت الغروب
  final String uvIndex; // مؤشر الأشعة فوق البنفسجية

  WeatherData({
    required this.location,
    required this.maxTemp,
    required this.minTemp,
    required this.weeklyForecast,
    required this.airQuality,
    required this.sunrise,
    required this.sunset,
    required this.uvIndex,
  });
}
