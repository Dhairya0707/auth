# Flutter Auth Template 🔒✨

Welcome to **Flutter Auth Template**, a ready-to-use, modular authentication system for Flutter apps! This repository provides a clean, reusable, and customizable authentication module powered by Firebase Authentication and Firestore. Designed with developers in mind, it offers a plug-and-play solution for adding user sign-in and registration to any Flutter project. Whether you're building a to-do app, a social platform, or an e-commerce app, this template saves you time and lets you focus on your app's core features. Let's make authentication effortless! 🚀

## Features 🌟

- **Reusable Authentication**: Prebuilt sign-in and registration pages with Firebase Authentication.
- **Firestore Integration**: Stores user data (UUID, email, password) securely in Firestore.
- **Responsive UI**: Sleek, modern design with the Poppins font, customizable colors, and responsive layouts.
- **Password Visibility Toggle**: User-friendly password fields with show/hide functionality.
- **Error Handling**: Clear feedback via SnackBar for invalid inputs or Firebase errors.
- **Auth State Management**: Seamlessly routes authenticated users to your app’s main screen and unauthenticated users to the auth page.
- **Modular Design**: Easily integrate into any Flutter project with minimal setup.

## Installation 🛠️

Add this authentication module to your Flutter project in just a few steps!

### Prerequisites

- **Flutter SDK** (v3.0 or higher)
- **Dart** (v2.12 or higher)
- **Firebase Account** (with Authentication and Firestore enabled)
- A code editor (e.g., VS Code, Android Studio)
- A connected device or emulator for testing

### Steps

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/dhairya0707/dhairya0707-auth.git
   cd dhairya0707-auth
   ```

2. **Install Dependencies**: Ensure your `pubspec.yaml` includes the required dependencies. Add the following if not already present:

   ```yaml
   dependencies:
     flutter:
       sdk: flutter
     firebase_core: ^2.24.0
     firebase_auth: ^4.15.0
     cloud_firestore: ^4.13.0
     gap: ^3.0.0
   ```

   Then run:

   ```bash
   flutter pub get
   ```

3. **Set Up Firebase**:

   - Create a Firebase project at console.firebase.google.com.
   - Enable **Email/Password Authentication** in the Authentication section.
   - Set up a Firestore database with rules allowing read/write for authenticated users, e.g.:

     ```plaintext
     rules_version = '2';
     service cloud.firestore {
       match /databases/{database}/documents {
         match /users/{userId} {
           allow read, write: if request.auth != null;
         }
       }
     }
     ```
   - Download the `google-services.json` (Android) or `GoogleService-Info.plist` (iOS) and place it in `android/app` or `ios/Runner`.
   - Generate the `firebase_options.dart` file using the FlutterFire CLI:

     ```bash
     flutterfire configure
     ```

4. **Add Assets**: The `authpage.dart` references an image asset (`img/img1.png`). Create an `img` folder in your project root, add `img1.png`, and update `pubspec.yaml`:

   ```yaml
   assets:
     - img/img1.png
   ```

5. **Integrate into Your Project**:

   - Copy the `dhairya0707-auth` folder into your Flutter project’s `lib` directory (e.g., `lib/screen/auth/`).
   - Update your app’s entry point (e.g., `main.dart`) to use the `Gate` widget as the home screen:

     ```dart
     import 'package:flutter/material.dart';
     import 'package:firebase_core/firebase_core.dart';
     import 'package:your_project/screen/auth/gate.dart';
     import 'firebase_options.dart';
     
     void main() async {
       WidgetsFlutterBinding.ensureInitialized();
       await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
       runApp(const MyApp());
     }
     
     class MyApp extends StatelessWidget {
       const MyApp({super.key});
       @override
       Widget build(BuildContext context) {
         return MaterialApp(
           debugShowCheckedModeBanner: false,
           theme: ThemeData(
             colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
             useMaterial3: true,
           ),
           home: const Gate(),
         );
       }
     }
     ```
   - Replace `HomePage` in `gate.dart` with your app’s main screen widget.

6. **Run the App**:

   ```bash
   flutter run
   ```

Your app now has a fully functional authentication system! 🎉

## Usage 📖

Flutter Auth Template provides a polished authentication flow that you can drop into any Flutter project. Here’s how it works:

1. **Auth Page (**`authpage.dart`**)**:

   - Displays a welcoming UI with a header image and buttons for **Sign In** and **Register**.
   - Navigates to `SignInPage` or `RegisterPage` based on user action.

2. **Sign In (**`sign.dart`**)**:

   - Users enter their email and password to log in via Firebase Authentication.
   - On success, user data is saved to Firestore, and the app navigates to your main screen (via `Gate`).

3. **Register (**`register.dart`**)**:

   - Users enter an email and two matching passwords to create an account.
   - After registration, the app automatically signs in the user and redirects to the main screen.

4. **Gate Widget (**`gate.dart`**)**:

   - Listens to Firebase auth state changes using a `StreamBuilder`.
   - Routes authenticated users to your app’s main screen and unauthenticated users to the auth page.

### Example Integration

To use this template in your app:

- Update `gate.dart` to point to your main screen (e.g., `MyAppHome` instead of `HomePage`):

  ```dart
  if (snapshot.hasData) {
    return const MyAppHome(); // Your app's main screen
  } else {
    return const AuthPage();
  }
  ```
- Customize the UI (colors, fonts, or image assets) in `main.dart`, `authpage.dart`, `register.dart`, and `sign.dart` to match your app’s branding.

### Example Flow

- **Register**:
  - Navigate to the Register page, enter `user@example.com` and a password (e.g., `password123`).
  - Click "Register" to create an account and be redirected to your app’s main screen.
- **Sign In**:
  - Navigate to the Sign In page, enter `user@example.com` and `password123`.
  - Click "Sign In" to access your app’s main screen.

### Customization Tips

- **Colors**: Modify the color constants in `main.dart` (e.g., `backgroundColor1`, `primaryColor`) to match your app’s theme.
- **Fonts**: Replace the Poppins font in `pubspec.yaml` with your preferred font.
- **Assets**: Swap `img/img1.png` with your app’s logo or splash image.

## Contributing 🤝

We’d love your help to make this auth template even better! To contribute:

1. Fork the repository.
2. Create a new branch: `git checkout -b feature/your-feature-name`.
3. Make your changes and commit: `git commit -m "Add your feature"`.
4. Push to your fork: `git push origin feature/your-feature-name`.
5. Open a pull request with a clear description of your changes.

Ideas for contributions:

- Add support for additional auth methods (e.g., Google, Facebook).
- Enhance UI with animations or new layouts.
- Improve error handling or add input validation.

Please follow the Flutter style guide and include unit tests for new features. See the Contributing Guidelines for more details (create this file if needed).

## License 📜

This project is licensed under the MIT License. See the LICENSE file for details

## Why Use This Template? 🌈

Flutter Auth Template is designed to save you hours of setup time, letting you focus on building the core of your app. Its clean code, modular structure, and Firebase integration make it a versatile starting point for any Flutter project. Have feedback or ideas? Open an issue or join the conversation on GitHub. Let’s streamline authentication for everyone! 🚀
