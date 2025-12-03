import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF8B3DFF), Color(0xFF442B8A)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // HEADER
                const Text(
                  "North America",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  "Max: 24°   Min: 18°",
                  style: TextStyle(color: Colors.white70, fontSize: 15),
                ),
                const SizedBox(height: 20),

                // Cloud image (center)
                Center(
                  child: Image.asset(
                    "assets/illustrations/cloud_rain.png",
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 20),

                // 7-Days Forecast Card
                _sevenDaysForecastCard(),

                const SizedBox(height: 20),

                // Air Quality
                _airQualityCard(),

                const SizedBox(height: 20),

                // Sunrise + UV
                Row(
                  children: [
                    Expanded(
                      child: _infoCard(
                        title: "SUNRISE",
                        value: "5:28 AM",
                        subtitle: "Sunset: 7:25PM",
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _infoCard(title: "UV INDEX", value: "4 Moderate"),
                    ),
                  ],
                ),

                const SizedBox(height: 28),

                // Waves image bottom
                Center(
                  child: Image.asset(
                    "assets/illustrations/waves.png",
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: Container(
        height: 68,
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.08),
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 14,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: const Center(child: Icon(Icons.menu, color: Colors.white70)),
      ),
    );
  }

  // Widgets -------------------------------------------------------

  Widget _sevenDaysForecastCard() {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: _cardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "7-Days Forecasts",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios, color: Colors.white70, size: 18),
              _dayItem("19°", "Mon", "assets/icons/day1.png"),
              _dayItem("18°", "Tue", "assets/icons/day2.png"),
              _dayItem("19°", "Wed", "assets/icons/day3.png"),
              _dayItem("19°", "Thu", "assets/icons/day4.png"),
              Icon(Icons.arrow_forward_ios, color: Colors.white70, size: 18),
            ],
          ),
        ],
      ),
    );
  }

  Widget _airQualityCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: _cardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "AIR QUALITY",
            style: TextStyle(color: Colors.white60, fontSize: 13),
          ),
          const SizedBox(height: 8),
          const Text(
            "3 - Low Health Risk",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "See more",
              style: TextStyle(color: Colors.white.withOpacity(0.9)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoCard({
    required String title,
    required String value,
    String? subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: _cardDecoration(),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white60, fontSize: 13),
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          if (subtitle != null) ...[
            const SizedBox(height: 6),
            Text(
              subtitle,
              style: const TextStyle(color: Colors.white54, fontSize: 12),
            ),
          ],
        ],
      ),
    );
  }

  Widget _dayItem(String temp, String day, String iconPath) {
    return Column(
      children: [
        SizedBox(height: 46, child: Image.asset(iconPath, fit: BoxFit.contain)),
        const SizedBox(height: 6),
        Text(temp, style: const TextStyle(color: Colors.white)),
        Text(day, style: const TextStyle(color: Colors.white60, fontSize: 12)),
      ],
    );
  }

  BoxDecoration _cardDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(
        colors: [
          Colors.white.withOpacity(0.20),
          Colors.white.withOpacity(0.08),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 18,
          offset: const Offset(0, 8),
        ),
      ],
    );
  }
}
