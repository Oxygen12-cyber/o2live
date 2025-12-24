# 🚀 02 Live

<div align="center">
  <!-- Add your logo here -->
  <!-- <img src="assets/icons/app_logo.png" alt="02 Live Logo" width="100"/> -->
  
  <br>

  **AI-Powered LiveScore & Sports Analysis Application**

  [![Flutter](https://img.shields.io/badge/Flutter-3.19.0-blue.svg)](https://flutter.dev)
  [![Dart](https://img.shields.io/badge/Dart-3.0-blue.svg)](https://dart.dev)
  [![State Management](https://img.shields.io/badge/State%20Management-Riverpod-purple.svg)](https://riverpod.dev)
  [![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
</div>

---

## 📝 Description

**02 Live** is a cutting-edge mobile application built with Flutter that redefines how sports fans engage with live games. Beyond just real-time scores for football and basketball, it integrates **Artificial Intelligence** to provide deep insights, game analysis, and predictive outcomes based on historical data and current team form.

Whether you are tracking a local derby or a major international tournament, 02 Live delivers detailed match contexts including weather conditions, referee statistics, venue details, and comprehensive team formations.

## ✨ Key Features

- **⚡ Real-time Live Scores:** Instant updates for active matches with zero latency.
- **🤖 AI-Powered Analysis:** Smart prediction engine that processes team performance patterns to forecast match outcomes.
- **📊 Detailed Match Stats:** 
  - **Venue Information:** Capacity, city, coordinates, and timezone.
  - **Match Context:** Weather (pitch & overall conditions), Referees (nationality, type).
  - **Lineups & Formations:** Confirmed starting XIs and tactical setups.
- **🏆 Comprehensive Coverage:** From basic play-by-play to deep player and team statistics.
- **🎨 Premium UI/UX:** Sleek, dark-mode capability with smooth animations (Lottie), custom icons (Iconsax, FontAwesome), and a responsive design.
- **📅 Interactive Calendar:** Easily navigate through past results and upcoming fixtures.

## 📸 Screenshots & Demo

### 🎥 Live Demo
> *Check out the smooth animations and user flow.*
> (Ensure `assets/videos/mbappe.mp4` is present or update the link below)

[Watch Preview Video](assets/videos/mbappe.mp4)

### 📱 Interface Preview
<div align="center">
  <!-- Upload your screenshots to assets/images/ and uncomment the lines below -->
  <!-- 
  <img src="assets/images/home_screen.png" width="200" />
  <img src="assets/images/stats_screen.png" width="200" />
  <img src="assets/images/ai_prediction.png" width="200" />
  -->
  <p><i>Screenshots coming soon...</i></p>
</div>

## 🛠️ Technology Stack

- **Framework:** [Flutter](https://flutter.dev)
- **Language:** [Dart](https://dart.dev)
- **State Management:** [Flutter Riverpod](https://riverpod.dev)
- **Backend & Database:** [Supabase](https://supabase.com)
- **Local Storage:** Shared Preferences
- **API & Networking:** HTTP, JSON Serializable, Dio (optional/implied)
- **UI Components:** 
  - Google Fonts
  - Lottie Animations
  - Iconsax & FontAwesome
  - Table Calendar

## 🚀 Installation and Setup

### Prerequisites
- Flutter SDK (Safe to use v3.x or newer)
- VS Code or Android Studio
- Android Emulator or iOS Simulator

### Steps to Run

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Oxygen12-cyber/o2live.git
   cd o2live
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Configure Environment:**
   - Ensure your `.env` file is set up with valid Supabase/API keys.

4. **Run the app:**
   ```bash
   flutter run
   ```

## 📂 Project Structure

```bash
lib/
├── main.dart
├── service/
│   └── api/
│       └── sportevents/  # Core data models (SportEvent, Venue, Competitors, etc.)
├── features/             # Feature-based organization (recommended)
└── ...
```

## 🛣️ Future Roadmap

- [ ] Expanded support for Tennis and Cricket
- [ ] Personalized AI-generated match summaries
- [ ] Push Notifications for favorite teams
- [ ] Pro Subscription with advanced analytical tools

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📞 Contact

**Adeola**  
📧 [adeolaodunjo32@gmail.com](mailto:adeolaodunjo32@gmail.com)  
🔗 [GitHub Profile](https://github.com/Oxygen12-cyber)
