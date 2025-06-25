# 👟 LacedUp

A sleek Flutter shoes shop app where users can browse sneakers and shoes, view details, and add them to a cart — all built using **Riverpod** for efficient state management.  
Inspired by real-world shopping apps and structured for learning and customization.

---

## 🚀 Features

- 🧱 Clean UI with Material Design
- 📦 Browse sneakers from a static list
- 👟 View detailed sneaker descriptions
- 🛒 Add sneakers to a shopping cart
- ⚡ Powered by Riverpod for reactive state management
- 📱 Optimized for mobile devices

---

## 📸 Screenshots

> Add screenshots in `assets/screenshots/` and link them here:
<!-- 
![Home](assets/screenshots/home.png)
![Details](assets/screenshots/details.png)
![Cart](assets/screenshots/cart.png)
-->

---

## 🧰 Tech Stack

- **Flutter** with Dart
- **Riverpod** for state management
- **Material Design** components
- Stateless architecture with `ConsumerWidget`s

---

## 🛠️ Getting Started

## 📁 Project Structure

lib/
├── main.dart                # App entry point and routing

├── models/

│   └── shoe.dart            # Shoe model class

├── providers/

│   └── shoe_provider.dart   # Shoe and cart state providers

├── screens/

│   ├── home.dart            # Home screen with sneaker list

│   ├── shoe_details.dart    # Sneaker detail view

│   └── cart.dart            # Cart page

├── widgets/

│   ├── shoe_tile.dart       # Reusable widget for each sneaker

│   └── shoe_list.dart       # (Optional) List logic abstraction


## 🙏 Acknowledgements

Built as a customization of the Flutter Riverpod Shopping App Tutorial by The Net Ninja.
Big thanks for the fantastic learning content!

Additional thanks to:

Flutter community for tools and documentation

Riverpod for modern, maintainable state management

## 📄 License

This project is licensed under the [MIT License](LICENSE).

## 💬 Feedback or Contributions

Found a bug, have a suggestion, or want to contribute? Feel free to:

- ⭐ Star the repo to show your support
- 🐛 [Open an issue](https://github.com/iamdipesh18/my_tea_ghar/issues) for bugs or ideas
- 📥 Fork the repo and submit a pull request

I'd love to hear your thoughts and improvements to make this project even better!

## 🌱 Coming Soon (Ideas)
- 🔍 Search bar and filters
- ❤️ Favorite shoes
- 🔐 Firebase Auth integration
- 📤 Admin panel to upload sneakers
- 🧾 Order history

## Live Demo (Currently Working on it!)

Follow the steps below to run the app locally:

### 1. Prerequisites

- Flutter SDK installed: [flutter.dev/docs/get-started](https://flutter.dev/docs/get-started)
- A working emulator or connected device

---

### 2. Clone & Run the Project

```bash
git clone https://github.com/iamdipesh18/lacedup.git
cd lacedup
flutter pub get
flutter run
