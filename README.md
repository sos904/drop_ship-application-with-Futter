# Drop Ship E-Commerce Application


Drop Ship is a comprehensive e-commerce application developed using Flutter. It provides a seamless shopping experience for users and a powerful administrative panel for managing the store. The application features a dual-role system: a feature-rich client-facing app for customers and a dedicated admin interface for store owners.

## Features

### Customer Features
- **Authentication:** Secure user login and registration using email/password.
- **Product Discovery:** Browse products on the home feed, filter by category, or use the search functionality.
- **Product Details:** View detailed product information, including multiple images in a carousel, descriptions, pricing, and aggregated user ratings.
- **Shopping Cart:** Add products to the cart, adjust item quantities, and view the subtotal.
- **Checkout Process:** Enter shipping information and place orders securely.
- **Order Management:** View personal order history and track the real-time status of current orders (Pending, Approved, Delivery, Delivered).
- **Product Ratings:** Rate purchased products to provide feedback.
- **Live Support:** Engage in real-time chat with an administrator via an integrated Tawk.to chat widget.

### Admin Panel
- **Analytics Dashboard:** View key sales metrics, including total earnings and sales breakdowns by category, visualized with bar charts.
- **Product Management:** Add new products with details and images, view all existing products in a grid, and delete products from the store.
- **Order Management:** Access and manage all customer orders and update their fulfillment status.
- **Secure Logout:** Log out from the admin panel.

## Architecture & Tech Stack

- **Frontend (Mobile App):**
    - **Framework:** Flutter
    - **Language:** Dart
    - **State Management:** `provider`
    - **Backend Communication:** `http` package for REST API calls.
    - **Key Packages:** `carousel_slider`, `flutter_rating_bar`, `charts_flutter`, `file_picker`, `cloudinary_public`, `flutter_tawk`.

- **Backend:**
    - The application is designed to connect to a Node.js/Express.js backend with a MongoDB database.
    - **API Endpoint:** The app is configured to connect to the live backend at `https://emart-xql0.onrender.com`.

## Getting Started

### Prerequisites
- Flutter SDK installed on your machine.
- A configured IDE like Visual Studio Code or Android Studio.
- An Android Emulator, iOS Simulator, or a physical device.

### Installation & Running
1.  **Clone the repository:**
    ```bash
    git clone https://github.com/sos904/drop_ship-application-with-futter.git
    ```
2.  **Navigate to the project directory:**
    ```bash
    cd drop_ship-application-with-futter
    ```
3.  **Install the required dependencies:**
    ```bash
    flutter pub get
    ```
4.  **Run the application:**
    ```bash
    flutter run
    ```
> **Note:** The application is pre-configured to communicate with a live backend instance. No additional backend setup is required to run the client app.
