# Credit Card UI

A modern and customizable credit card UI application built with Flutter, showcasing best practices in state management and animations. This project demonstrates the implementation of a beautiful credit card interface where users can personalize their card designs.

## Features

- 🎨 Interactive card color customization
- 💳 Real-time card preview
- 🔄 Smooth animations and transitions
- 📱 Responsive design for various screen sizes
- 🏗️ Feature-driven architecture
- 🔄 BLoC pattern for state management

## Tech Stack

- **Flutter** - UI framework
- **flutter_bloc** - State management
- **google_fonts** - Typography
- **equatable** - Value equality

## Project Structure

```
lib/
├── home/
│   ├── bloc/         # BLoC implementation
│   ├── pages/        # UI screens
│   └── widgets/      # Reusable components
└── utils/
    └── constants.dart # Style definitions
```

## Getting Started

### Prerequisites

- Flutter SDK (Latest stable version)
- Android Studio / VS Code
- Git

### Installation

1. Clone the repository
   ```bash
   git clone https://github.com/yourusername/card_ui.git
   ```

2. Navigate to project directory
   ```bash
   cd card_ui
   ```

3. Install dependencies
   ```bash
   flutter pub get
   ```

4. Run the app
   ```bash
   flutter run
   ```

## Architecture

The project follows a feature-driven architecture with BLoC pattern for state management:

- **BLoC Pattern**: Separates business logic from UI components
- **Feature-First Structure**: Organizes code by features rather than layers
- **Clean Architecture**: Maintains separation of concerns

## UI Components

- Custom card design with dynamic color schemes
- Interactive color selection buttons
- Profile section with avatar
- Save card functionality with feedback

## Animations

The app includes smooth animations for:
- Color transitions
- Card appearance
- Button interactions

## Inspiration

The design is inspired by a concept from Dribble:

<img width="626" alt="Credit Card UI Design" src="https://user-images.githubusercontent.com/64529996/222853294-862442ec-c178-4a55-aa46-53cf214e57ab.png">

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Flutter team for the amazing framework
- The Dribble community for design inspiration

## Support

If you like this project, please give it a ⭐️

---

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
