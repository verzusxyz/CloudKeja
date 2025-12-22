<p align="center" style="background-color: #f0f0f0; padding: 20px; border-radius: 8px; text-align: center;">
  <img src="assets/images/app_icon_label.png" alt="Rent Pro">
</p>


## **1. Introduction**

Thank you for purchasing our Flutter app from CodeCanyon! We are thrilled to have you as a valued customer and are committed to providing you with exceptional support throughout your journey with our product.

This customization guideline is designed to help you easily modify and adapt the app to suit your specific needs. Whether you're changing the app name, updating the theme colors, or adding new languages, this document will walk you through each step in a clear and structured manner.

If you encounter any issues while customizing the app or have questions about the documentation, please don’t hesitate to reach out to our dedicated Support Team. We’re here to assist you!

### **Help and Support Contact Details**
- **Email:** [acnooteam@gmail.com](mailto:acnooteam@gmail.com)  
- **Teams:** [Join our Teams chat](https://join.skype.com/invite/kEPqImF1Vfqk)

We appreciate your trust in our product and look forward to helping you create an amazing app tailored to your requirements. 😊

## **2. Prerequisites**

Before you begin customizing and running the app, ensure that your development environment is properly set up. Below are the prerequisites and steps to prepare your system:

### **2.1 System Requirements**
To run and customize this Flutter app, your system must meet the following minimum requirements:
- **Operating System**: Windows, macOS, or Linux.
- **RAM**: At least 8 GB (16 GB recommended for smoother performance).
- **Storage**: Minimum 5 GB of free disk space.
- **Internet Connection**: Required for downloading dependencies and running the app.

---

### **2.2 Software Requirements**
Install the following software to set up your development environment:

1. **Flutter & Dart SDK**
   - Version: Flutter 3.32.4 (or higher, if compatible).
   - Download Link: [Flutter SDK Archive](https://docs.flutter.dev/release/archive).
   - Installation Guide: [Official Flutter Installation Guide](https://flutter.dev/docs/get-started/install).

2. **IDE (Integrated Development Environment)**
   - Recommended Options:
     - **Android Studio**: [Download Android Studio](https://developer.android.com/studio).
     - **Visual Studio Code**: [Download VS Code](https://code.visualstudio.com/).

3. **Flutter and Dart Plugins**
   - Install the Flutter and Dart plugins in your IDE:
     - For Android Studio: Go to **File > Settings > Plugins**, search for "Flutter," and install it. The Dart plugin will be installed automatically.
     - For VS Code: Open the Extensions Marketplace, search for "Flutter," and install it.

4. **Android SDK**
   - Ensure the Android SDK is installed and configured:
     - Open **SDK Manager** in Android Studio.
     - Install the latest **Command Line Tools** and **Build Tools**.
     - Enable **USB Debugging** on your physical device for testing.

---

### **2.3 Installation Checklist**
Follow these steps to verify that your environment is ready:

1. **Enter Your Purchase Code<span style="color: red"> [ This is very important ]</span>**
    - Get your purchase code from your CodeCanyon account.
    - Replace *`YOUR_PURCHASE_CODE`* in the `lib/app/core/static/app_config/_app_config.dart`.
    - After replacing the purchase code, it should look like this:
      ```dart
        // Purchase Code
        static const String purchaseCode = 'YOUR_PURCHASE_CODE' // replace this;
      ```
> **Note:** Make sure to replace the placeholder with your actual purchase code.

2. **Install Flutter SDK**
   - Download the Flutter SDK from the official website and extract it to your desired location (e.g., `C:\flutter` or `~/flutter`).
   - Add the Flutter `bin` directory to your system's PATH variable:
     - On Windows:
       - Open **Environment Variables** and add the path to `flutter\bin` under the **Path** variable.
     - On macOS/Linux:
       - Add the following line to your shell configuration file (e.g., `.bashrc`, `.zshrc`):
         ```bash
         export PATH="$PATH:/path/to/flutter/bin"
         ```

3. **Verify Installation**
   - Open a terminal or command prompt and run:
     ```bash
     flutter doctor
     ```
   - Address any issues reported by the tool (e.g., missing dependencies, unconfigured Android SDK).

4. **Set Up Your IDE**
   - Configure the Flutter and Dart SDK paths in your IDE:
     - For Android Studio: Go to **File > Settings > Languages & Frameworks > Flutter** and set the Flutter SDK path.
     - For VS Code: Open the Command Palette (`Ctrl + Shift + P`), search for "Flutter: Select SDK," and select the Flutter SDK path.

5. **Enable USB Debugging (For Physical Devices)**
   - On your Android device, go to **Settings > Developer Options** and enable **USB Debugging**.
   - If **Developer Options** is not visible, enable it by tapping **Build Number** 7 times in **Settings > About Phone**.

---

### **2.4 Additional Notes**
- If you encounter any issues during setup, refer to the official Flutter documentation: [Flutter Setup Guide](https://flutter.dev/docs/get-started/install).
- For video tutorials, check out the following playlist:
  - [How to Install and Setup Flutter for App Development](https://youtu.be/gv1LScpG0jM?list=PLSzsOkUDsvdtl3Pw48-R8lcK2oYkk40cm).

## **3. Setting Up the Development Environment**

Now that you know the prerequisites, follow these steps to set up your development environment:

### **3.1 Installing Flutter**
1. **Download Flutter SDK**
   - Download Flutter 3.27.3 from the official Flutter SDK Archive: [Flutter SDK Archive](https://docs.flutter.dev/release/archive).
2. **Extract the Flutter SDK**
   - Extract the downloaded file to your desired installation directory (e.g., `C:\flutter` or `~/flutter`).
   - Avoid locations like `C:\Program Files` to prevent permission issues.
3. **Add Flutter to Your PATH**
   - Add the Flutter `bin` directory to your system's PATH variable:
     - **Windows**:
       - Open **Environment Variables** and add the path to `flutter\bin`.
     - **macOS/Linux**:
       - Add the following line to your shell configuration file (e.g., `.bashrc`, `.zshrc`):
         ```bash
         export PATH="$PATH:/path/to/flutter/bin"
         ```
4. **Verify Installation**
   - Run the following command in your terminal:
     ```bash
     flutter doctor
     ```
   - Address any issues reported by the tool (e.g., missing dependencies, unconfigured Android SDK).

---

### **3.2 Configuring Android Studio**
1. **Install Android Studio**
   - Download and install Android Studio from the official website: [Android Studio](https://developer.android.com/studio).
2. **Install Flutter and Dart Plugins**
   - Open Android Studio and go to **File > Settings > Plugins**.
   - Search for "Flutter" and install it. The Dart plugin will be installed automatically.
3. **Configure Flutter and Dart SDK Paths**
   - Go to **File > Settings > Languages & Frameworks > Flutter**.
   - Set the path to your Flutter SDK (e.g., `C:\flutter` or `~/flutter`).
   - The Dart SDK path should be automatically detected as `flutter/bin/cache/dart-sdk`.
4. **Install Android SDK Tools**
   - Open **SDK Manager** in Android Studio (`Tools > SDK Manager`).
   - Install the latest **Command Line Tools** and **Build Tools**.
   - Uncheck **Hide Obsolete Packages** and install **Android SDK Command Line Tool (Latest)**.

---

### **3.3 Verifying Setup**
After completing the above steps, verify that everything is configured correctly:
1. Run the following command in your terminal:
   ```bash
   flutter doctor
   ```
2. Ensure there are no critical errors. Common warnings include:
   - Missing licenses for Android SDK (run `flutter doctor --android-licenses` to accept them).
   - Missing emulator/device (set up an emulator or connect a physical device).

<!-- Important Section Starts here -->
## **4. Project Structure**

Understanding the project structure is essential for navigating and customizing the app effectively. Below is a simplified tree structure of the project, focusing on the key directories and files.

```plaintext
lib/
├── app/                  # Core application logic, data models, repositories, and pages.
│   ├── core/             # Core utilities: helpers, static configs, styles, themes, and types.
│   ├── data/             # Data layer: models and repositories for API communication.
│   ├── middlewares/      # Middleware logic (e.g., authentication checks).
│   ├── pages/            # Screens/pages of the app, organized by feature (auth, common, landlord, tenant).
│   ├── routes/           # Routing configuration for navigation.
│   ├── services/         # Shared services (API client, global listeners, localization, etc.).
│   └── widgets/          # Reusable custom widgets used across the app.

assets/                   # Static assets like images, icons, JSON files, and shapes.
│   ├── app/              # App-specific assets (icons, splash screen, background images).
│   ├── icons/            # Icons used throughout the app (e.g., payment, room features).
│   ├── images/           # Images, including onboarding screen visuals.
│   ├── json/             # JSON files for static data (e.g., country lists).
│   └── shapes/           # Shape assets (placeholders, loading spinners, error messages).

i18n/                     # Localization files for translations (e.g., en.i18n.json, fr.i18n.json).

dev_tool/                 # Development tools and scripts (e.g., customization scripts).

main.dart                 # Entry point of the Flutter application.
pubspec.yaml              # Configuration file for dependencies and assets.
customization.yaml        # Contains easy customization configuration (Detailed in step 5).
```
---

### **4.1 Overview of the Project Directory**
The project is organized into two main directories:
- `/assets`: Contains static assets like images, icons, JSON files, and shapes.
- `/lib`: Contains the main source code of the app.

Each directory and file has a specific purpose, making it easier to locate and modify components as needed.

---

### **4.2 Key Folders and Their Purpose**

#### **`/assets`**
This folder contains all static assets used in the app. Below are its subfolders and their purposes:

- **`/app`**: App-specific assets such as app icons, splash screens, and background images.
  - Example files:
    - `app_home_bg.png`: The background image for the home screen.
    - `app_icon.png`: The drawer header icon.
    - `app_launcher_icon.png`: The app launcher icon.
    - `app_splash_icon.png`: The splash screen logo.
    - `appbar_app_icon.png`: The appbar icon.
    - `support_avatar.jpeg`: Placeholder avatar for support-related features.
- **`/icons`**: Icons used throughout the app.
  - Example files:
    - `bed_room_icon.png`, `bath_room_icon.png`: Icons for property features.
    - `online_payment.png`, `offline_payment.png`: Payment-related icons.
- **`/images/onboard`**: Images used in the onboarding screens.
  - Example files:
    - `onboard_01.png`, `onboard_02.png`, `onboard_03.png`.
- **`/json`**: JSON files containing data such as country lists.
  - Example file:
    - `countries.json`.
- **`/shapes`**: Shape assets like placeholders, loading spinners, and error messages.
  - Example files:
    - `loading_spinner.png`, `no_internet.png`.

#### **`/lib`**
This folder contains the app's source code, organized into subfolders for better modularity. Below are the key subfolders:

- **`/app/core`**: Core functionality of the app.
  - **`/static/api_config`**: API configuration files.
    - `_api_config.dart`: File to configure the backend domain URL.
  - **`/static/app_config`**: App configuration files.
    - `_app_config.dart`: File to configure app name, package name, etc.
  - **`/theme`**: Global theme definitions.
    - `_app_colors.dart`: File to define primary and secondary colors.
  - **`/styles`**: Reusable styles for buttons, text fields, etc.
- **`/app/data`**: Data models and repositories.
  - Example subfolders:
    - `/models`: Data models for API responses.
    - `/repositories`: Repositories for handling API calls.
- **`/app/pages`**: Screens and views of the app.
  - Example subfolders:
    - `/auth`: Authentication-related screens (e.g., login, signup).
    - `/common`: Common screens like notifications and settings.
    - `/landlord`: Screens specific to landlords.
    - `/tenant`: Screens specific to tenants.
- **`/app/widgets`**: Custom widgets used across the app.
  - Example widgets:
    - `_custom_pi_chart.dart`: A reusable pie chart widget.
    - `_image_preview_gallery.dart`: A gallery for previewing images.
- **`/i18n`**: Localization files for translations.
  - Example files:
    - `en.i18n.json`: English translations.
    - `es.i18n.json`: Spanish translations.

---

### **4.3 Key Files and Their Purpose**

Below are some of the most important files in the project:

- **`_api_config.dart`**:
  - Path: `/lib/app/core/static/api_config/_api_config.dart`
  - Purpose: Configure the backend domain URL.
  - Example:
    ```dart
    const String baseUrl = 'https://yourdomain.com/';
    ```

- **`_app_config.dart`**:
  - Path: `/lib/app/core/static/app_config/_app_config.dart`
  - Purpose: Configure app-specific settings like app name and package name.
  - Example:
    ```dart
    const String appName = 'Rent Pro';
    const String packageName = 'com.acnoo.realestate';
    ```

- **`_app_colors.dart`**:
  - Path: `/lib/app/core/theme/_app_colors.dart`
  - Purpose: Define global color themes.
  - Example:
    ```dart
    const Color kMainColor = Color(0xFFYourHexCode);
    ```

- **Localization Files**:
  - Path: `/lib/i18n/`
  - Purpose: Manage translations for different languages.
  - Example:
    ```json
    {
      "helloWorld": "Hello, World!"
    }
    ```

---

### **4.4 How to Navigate the Project**

To locate files for customization:
1. Use the folder names to identify screens, widgets, and configurations.
   - Example: To modify the login screen, navigate to `/lib/app/pages/auth/sign_in`.
2. Refer to the file names for specific functionalities.
   - Example: To change the app theme, open `_app_colors.dart` in `/lib/app/core/theme`.

---

### **4.5 Additional Notes**

- The project is modular, making it easier to manage and customize.
- Always ensure that changes to critical files (e.g., `_api_config.dart`) are tested thoroughly.
- If you’re unsure about a file’s purpose, refer to its folder name or consult the documentation.





Great! Let’s incorporate the **Onboarding Customization** section into **Step 5: Customizing the App**, and also refine the localization steps to include updating translation keys. I'll structure it clearly so users can easily follow the instructions.


## **5. Customizing the App**

This section explains how to customize your app using the provided script and manual steps for specific customizations.

---

### **5.1 Recommended: Enable the RPS Package Globally**
The **RPS (Run Pub Script)** package allows you to run Dart scripts globally without needing to specify the full path. To enable it:

1. Open a terminal and run the following command to activate the RPS package globally:
   ```bash
   dart pub global activate rps
   ```
2. After activation, you can run any Dart script in the project using the `rps` command.

   Example:
   ```bash
   rps customize
   ```

> **Note**: Using the RPS package is highly recommended as it simplifies script execution and avoids path-related issues.

> **Troubleshooting**: If you encounter permission issues while activating the RPS package, ensure your system allows global installations or use `sudo` (on macOS/Linux) or run the terminal as an administrator (on Windows).

---

### **5.2 Using the Customization Script**

The app includes a powerful customization script (`lib/dev_tool/.customize.dart`) that allows you to easily update key aspects of the app, such as the app name, package name, base URL, and app icon. Follow these steps to use the script:

#### **Step 1: Prepare Your `customization.yaml` File**
- Locate the `customization.yaml` file in the root directory of the project (e.g., `customization.yaml`).
- Open the file and update the following fields:
  ```yaml
  app_name: "YourAppName"
  package_name: "com.yourcompany.yourappname"
  base_url: "https://yourdomain.com"
  ```
  - **`app_name`**: The name of your app.
  - **`package_name`**: The unique identifier for your app (e.g., `com.yourcompany.yourappname`).
  - **`base_url`**: The backend domain URL for API requests.

#### **Step 2: Run the Script**
- Open a terminal in the root directory of the project.
- Use the following command to run the script:
  ```bash
  rps customize
  ```
  This will apply all customizations (app name, package name, base URL, and app icon).

#### **Step 3: Customize Specific Features (Optional Flags)**
If you want to customize only specific features, use the following flags:
- **Change Base URL Only**:
  ```bash
  rps customize --baseUrl-only
  ```
- **Change Package Name Only**:
  ```bash
  rps customize --packageName-only
  ```
- **Change App Name Only**:
  ```bash
  rps customize --appName-only
  ```
- **Change App Icon Only**:
  ```bash
  rps customize --icon-only
  ```

#### **Step 4: Verify Changes**
- After running the script, verify the changes:
  - Restart the app to see the updated app name, package name, and base URL.
  - Ensure the app icon has been updated by checking the launcher.

  Here's a quick overview for the `customize` script:
  ```markdown
  | Flag                 | Description                    |
  | -------------------- | ------------------------------ |
  | `--baseUrl-only`     | Changes only the base URL.     |
  | `--packageName-only` | Changes only the package name. |
  | `--appName-only`     | Changes only the app name.     |
  | `--icon-only`        | Changes only the app icon.     |
  ```
---

### **5.3 Manual Customizations**

For additional customizations not covered by the script, follow the steps below:

#### **5.3.1 Changing Onboarding Screen Content**
Customizing the onboarding screens involves updating both images and text content. Follow these steps:

##### **Step 1: Replace Onboarding Images**
- Navigate to the `/assets/images/onboard` folder.
- Replace the existing images with your custom ones:
  - Rename your images as follows:
    - `onboard_01.png`
    - `onboard_02.png`
    - `onboard_03.png`
- Ensure the images are in `.png` format for better visual quality.
- Ensure the new images have the same dimensions as the originals to prevent layout distortions.

##### **Step 2: Update Onboarding Text Content**
- Navigate to the `/lib/i18n` folder.
- Open the base language file (`en.i18n.json`) and locate the `pages.onboard.onboardData` section:
  ```json
  {
    "pages": {
      "onboard": {
        "onboardData": {
          "data1": {
            "title": "Find Your Property",
            "description": "We've made it a breeze to find a place that fits your life — whether it's a room, an apartment, or a house."
          },
          "data2": {
            "title": "Apartment In Town",
            "description": "We save you time by quickly matching you with the perfect property before it's gone so you can enjoy your new home, or list your own for free."
          },
          "data3": {
            "title": "Your Comfort House",
            "description": "If you're looking for a place to live then take a look at our houses for rent. We have a wide range of houses for you to choose from all over the country."
          }
        }
      }
    }
  }
  ```
- Modify the `title` and `description` fields for each `data` entry (`data1`, `data2`, `data3`) to reflect your desired content.

##### **Step 3: Apply Localization Changes**
- After updating the JSON files, run the following command to apply the changes to the localization classes:
  ```bash
  dart run slang
  ```
- This will update the localization class data based on the modified JSON files.

##### **Step 4: Restart the App**
- Restart the app to see the updated onboarding images and text content.

---

#### **5.3.2 Updating Themes**
- Open `_app_colors.dart`:
  - Path: `/lib/app/core/theme/_app_colors.dart`
- Modify global colors:
  ```dart
  const Color kMainColor = Color(0xFFYourHexCode);
  ```
- Save the file and hot-reload to see the changes.

> **Note**: Use hot reload to see immediate changes for most updates. However, for certain changes (e.g., app name, package name), a full restart is required.

---

#### **5.3.3 Adding or Editing Translations**
To add or edit translations, follow these steps:

##### **Step 1: Add a New Language**
- Duplicate an existing `.i18n.json` file (e.g., `en.i18n.json`) and rename it to match the new language code (e.g., `fr.i18n.json` for French).
- Translate the strings in the new file:
  ```json
  {
    "helloWorld": "Bonjour tout le monde!"
  }
  ```

##### **Step 2: Edit Existing Translations**
- Open the corresponding `.i18n.json` file (e.g., `es.i18n.json` for Spanish).
- Modify the string values:
  ```json
  {
    "helloWorld": "¡Hola a todos!"
  }
  ```

##### **Step 3: Apply Localization Changes**
- Run the following command to update the localization classes:
  ```bash
  dart run slang
  ```

##### **Step 4: Hot-Reload the App**
- Hot-reload the app to apply the changes.

---

### **5.3.4 Adding or Editing Translations**

The app uses **`slang_flutter`** for localization, which simplifies managing translations across multiple languages. Translations are stored in `.i18n.json` files located in the `/lib/i18n` folder. Each language has its own file (e.g., `en.i18n.json` for English, `es.i18n.json` for Spanish). Follow these steps to add or edit translations:

---

#### **Step 1: Understanding the Localization Structure**
- The app accesses localized strings using the `t` object, which is generated automatically by `slang_flutter`. For example:
  ```dart
  t.action.save // Accesses the "save" key under the "action" namespace.
  ```
- The structure of the `.i18n.json` files mirrors this access pattern. For example:
  ```json
  {
    "action": {
      "save": "Save",
      "cancel": "Cancel"
    }
  }
  ```

---

#### **Step 2: Adding a New Language**
1. Duplicate an existing `.i18n.json` file (e.g., `en.i18n.json`) and rename it to match the new language code. For example:
   - For French: `fr.i18n.json`
   - For German: `de.i18n.json`
2. Translate the strings in the new file. For example:
   ```json
   {
     "action": {
       "save": "Enregistrer",
       "cancel": "Annuler"
     }
   }
   ```
3. Save the file and run the following command to update the localization classes:
   ```bash
   dart run slang
   ```
4. Restart the app to apply the changes.

---

#### **Step 3: Editing Existing Translations**
1. Open the corresponding `.i18n.json` file for the language you want to edit (e.g., `es.i18n.json` for Spanish).
2. Modify the string values while keeping the keys unchanged. For example:
   ```json
   {
     "action": {
       "save": "Guardar", // Updated translation
       "cancel": "Cancelar"
     }
   }
   ```
3. Run the following command to update the localization classes:
   ```bash
   dart run slang
   ```
4. Hot-reload the app to see the changes.

---

#### **Step 4: Deleting a Language**
1. Remove the `.i18n.json` file for the language you want to delete (e.g., `fr.i18n.json` for French).
2. Remove references to the language from the code:
   - If any part of the app uses keys specific to the removed language (e.g., `t.action.save`), replace the reference with a static string or use the default language.
   - Example:
     ```dart
     t.action.save // Replace with:
     "Save"
     ```
3. Run the following command to update the localization classes:
   ```bash
   dart run slang
   ```
4. Restart the app to apply the changes.


> **Troubleshooting**: If translations do not appear after running `dart run slang`, ensure the `.i18n.json` file is correctly formatted and all required keys are present.
---

#### **Step 5: Common Issues**
- **Missing Translations**: If a translation is missing for a specific language, the app will fall back to the default language (English). Ensure that all required keys are present in every `.i18n.json` file.
- **Key Errors**: Always keep the keys consistent across all `.i18n.json` files. Changing a key in one file without updating others will cause runtime errors.
- **Supported Locales**: You can find the list of supported locales here:  
  [Flutter Localizations Library](https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html)

---

### **5.4 Troubleshooting**
- If the script fails, ensure that:
  - The `customization.yaml` file exists and is correctly formatted.
  - All required dependencies are installed (`flutter pub get`).
  - You have the necessary permissions to modify files.
- For errors related to package name changes, ensure the new package name follows the standard structure (e.g., `com.yourcompany.yourappname`).


## **6. Debugging and Troubleshooting**

Debugging is an essential part of app development. It helps you identify and resolve issues that may arise during customization or runtime. This section will guide you through common problems, debugging tools, and steps to ensure your app runs smoothly on mobile devices.

---

### **6.1 Common Issues and Solutions**

Here are some common issues you might encounter while customizing or running the app, along with their solutions:

#### **6.1.1 Missing Dependencies**
- **Symptoms**: Errors like "Undefined class" or "Missing plugin."
- **Solution**: Run the following command to fetch dependencies:
  ```bash
  flutter pub get
  ```

#### **6.1.2 Localization Errors**
- **Symptoms**: Missing translations or fallback to the default language.
- **Solution**: Ensure all `.i18n.json` files have consistent keys and run:
  ```bash
  dart run slang
  ```

#### **6.1.3 API Connection Issues**
- **Symptoms**: The app fails to fetch data from the backend.
- **Solution**: Verify the `baseUrl` in `_app_config.dart` and check network permissions.

#### **6.1.4 Package Name Conflicts**
- **Symptoms**: Build errors related to duplicate package names.
- **Solution**: Ensure the `package_name` in `customization.yaml` is unique.

#### **6.1.5 Image/Asset Loading Failures**
- **Symptoms**: Broken images or missing assets.
- **Solution**: Verify asset paths in `pubspec.yaml` and ensure files exist in the correct directories.

---

### **6.2 Debugging Tools**

Flutter provides built-in tools to help you debug your app effectively. Here are some of the most useful ones:

#### **6.2.1 Logging and Breakpoints**
- Use `print()` or `debugPrint()` statements to log messages in the console.
- Set breakpoints in your IDE (Android Studio or VS Code) to pause execution and inspect variables.

#### **6.2.2 Hot Reload and Hot Restart**
- **Hot Reload**: Quickly apply changes to the app without restarting it. Use this for UI updates or minor code changes.
- **Hot Restart**: Restart the app while preserving its state. Use this for more significant changes.

#### **6.2.3 Flutter Inspector**
- The Flutter Inspector (available in Android Studio and VS Code) allows you to inspect the widget tree, view layouts, and debug UI issues.

---

### **6.3 Running the App on Mobile Devices**

To test your app on mobile devices, follow these steps:

#### **6.3.1 Testing on Emulators**
- Open Android Studio and launch an emulator:
  ```bash
  flutter emulators --launch <emulator_id>
  ```
- Run the app:
  ```bash
  flutter run
  ```

#### **6.3.2 Testing on Physical Devices**
- Enable **USB Debugging** on your Android device:
  - Go to **Settings > Developer Options** and enable **USB Debugging**.
  - If **Developer Options** is not visible, enable it by tapping **Build Number** 7 times in **Settings > About Phone**.
- Connect your device via USB and run:
  ```bash
  flutter devices
  flutter run
  ```

---

### **6.4 Preparing for Release**

Before releasing your app, ensure it is thoroughly tested and optimized.

#### **6.4.1 Testing in Release Mode**
- Run the app in release mode to identify potential issues:
  ```bash
  flutter run --release
  ```

#### **6.4.2 Identifying Performance Bottlenecks**
- Use the Flutter Inspector to analyze performance metrics.
- Optimize widgets, animations, and network calls for better performance.

#### **6.4.3 Final Checklist Before Release**
- Verify all customizations are applied.
- Ensure no critical errors or warnings appear when running `flutter doctor`.
- Test the app on multiple devices and screen sizes.

---

### **6.5 Troubleshooting**

If you encounter issues during development, follow these tips:
- Always check the terminal for error messages.
- Use `flutter clean` to clear cached files if issues persist.
- Consult the official Flutter documentation or community forums for advanced problems.

---

### **6.6 Conclusion**

Debugging and troubleshooting are crucial steps in ensuring your app functions as expected. By addressing common issues, using debugging tools effectively, and testing on various devices, you can create a polished and reliable app. If you encounter any unresolved issues, don’t hesitate to reach out to our Support Team for assistance.

## **FAQ (Frequently Asked Questions)**

### **1. How do I change the app name?**
- **Answer**:  
  To change the app name, you can either use the customization script or manually update it:
  - **Using the Script**: Update the `app_name` field in the `customization.yaml` file and run:
    ```bash
    rps customize --appName-only
    ```
  - **Manually**: Open the `AndroidManifest.xml` file located at `android/app/src/main/AndroidManifest.xml` and modify the `android:label` attribute.

---

### **2. How do I update the app's package name?**
- **Answer**:  
  The package name can be updated using the customization script or manually:
  - **Using the Script**: Update the `package_name` field in the `customization.yaml` file and run:
    ```bash
    rps customize --packageName-only
    ```
  - **Manually**: Replace all instances of the old package name with the new one:
    1. Navigate to `android/app/src/main/kotlin/com/example/acnoo_pharmacy_app/MainActivity.kt`.
    2. Press `Ctrl + Shift + R` (or equivalent shortcut) to replace the old package name with the new one across the entire project.
    3. Ensure the new package name follows the structure (e.g., `com.yourcompany.yourappname`).

---

### **3. How do I change the backend API URL?**

- **Answer**:  
  You can update the backend API URL either manually or by using the customization script.

#### **Option 1: Manually Update the `baseUrl`**
1. Open the `_app_config.dart` file located at `/lib/app/core/static/app_config/_app_config.dart`.
2. Modify the `baseUrl` constant:
   ```dart
   const String baseUrl = 'https://your-new-domain.com';
   ```

#### **Option 2: Use the Customization Script**
The app includes a powerful customization script that allows you to easily update the backend API URL along with other configurations. Follow these steps:

1. **Prepare Your `customization.yaml` File**  
   - Locate the `customization.yaml` file in the root directory of the project.
   - Open the file and update the `base_url` field:
     ```yaml
     base_url: "https://your-new-domain.com"
     ```

2. **Run the Script**  
   - Open a terminal in the root directory of the project.
   - Use the following command to run the script:
     ```bash
     rps customize --baseUrl-only
     ```
   - This will update only the `baseUrl` without affecting other configurations.

3. **Verify Changes**  
   - Restart the app to ensure the new backend API URL is applied.
   - Test the app to confirm it connects successfully to the updated domain.


> **Note**: Make sure to replace `https://your-new-domain.com` with the correct URL of your backend API. And Remember <span style="color:red">**NOT**</span> put a slash (`/`) at the end of the url.
---

### **4. What should I do if `flutter doctor` shows errors?**
- **Answer**:  
  If `flutter doctor` reports issues:
  1. Address each error individually:
     - For missing Android licenses, run:
       ```bash
       flutter doctor --android-licenses
       ```
     - For missing dependencies, install the required tools (e.g., Android SDK Command Line Tools).
  2. After resolving the issues, re-run `flutter doctor` to verify that everything is configured correctly.

---

### **5. How do I add a new language for localization?**
- **Answer**:  
  To add a new language:
  1. Duplicate an existing `.i18n.json` file (e.g., `en.i18n.json`) and rename it to match the new language code (e.g., `fr.i18n.json` for French).
  2. Translate the strings in the new file.
  3. Run the following command to update the localization classes:
     ```bash
     dart run slang
     ```
  4. Restart the app to apply the changes.

---

### **6. Why are my translations not updating in the app?**
- **Answer**:  
  If translations are not updating:
  1. Ensure all `.i18n.json` files have consistent keys.
  2. Run the following command to regenerate the localization classes:
     ```bash
     dart run slang
     ```
  3. Hot-reload or restart the app to see the changes.

---

### **7. How do I replace the onboarding screen images?**
- **Answer**:  
  To replace the onboarding screen images:
  1. Navigate to the `/assets/images/onboard` folder.
  2. Replace the existing images (`onboard_01.png`, `onboard_02.png`, `onboard_03.png`) with your custom ones.
  3. Ensure the new images are in `.png` format and have the same filenames.
  4. Restart the app to see the updated images.

---

### **8. How do I change the app icon?**
- **Answer**:  
  To change the app icon:
  1. Replace the existing icon files in the `/assets/app` folder (`app_icon.png`, `app_launcher_icon.png`).
  2. Run the customization script:
     ```bash
     rps customize --icon-only
     ```
  3. Restart the app to see the updated icon.

---

### **9. What should I do if the app crashes after making changes?**
- **Answer**:  
  If the app crashes:
  1. Check the terminal or console for error messages.
  2. Use `flutter clean` to clear cached files and then run:
     ```bash
     flutter pub get
     ```
  3. Verify that all customizations (e.g., package name, API URL) are correctly applied.
  4. Test the app on a different device or emulator to rule out device-specific issues.

---

### **10. How do I build a release APK?**
- **Answer**:  
  To build a release APK:
  1. Open a terminal and navigate to the project directory.
  2. Run the following command:
     ```bash
     flutter build apk --release
     ```
  3. Locate the APK in the `build/app/outputs/flutter-apk/` directory.

---

### **11. Why is my app not connecting to the backend?**
- **Answer**:  
  If the app fails to connect to the backend:
  1. Verify the `baseUrl` in `_app_config.dart` is correct.
  2. Ensure the backend server is running and accessible.
  3. Check network permissions in the `AndroidManifest.xml` file:
     ```xml
     <uses-permission android:name="android.permission.INTERNET" />
     ```

---

### **12. How do I test the app on a physical device?**
- **Answer**:  
  To test the app on a physical device:
  1. Enable **Developer Options** and **USB Debugging** on your Android device.
  2. Connect the device to your computer via USB.
  3. Run the following command to list connected devices:
     ```bash
     flutter devices
     ```
  4. Start the app on the device:
     ```bash
     flutter run
     ```

---

### **13. What should I do if I encounter missing dependencies?**
- **Answer**:  
  If you encounter missing dependencies:
  1. Run the following command to fetch dependencies:
     ```bash
     flutter pub get
     ```
  2. If the issue persists, delete the `pubspec.lock` file and run `flutter pub get` again.
  3. Ensure your Flutter SDK is up-to-date by running:
     ```bash
     flutter upgrade
     ```

<!-- Important Section Ends here -->