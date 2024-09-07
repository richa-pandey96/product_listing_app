
# FlutterEcommerceApp

A brief description of what this project does:

A Flutter application for managing products, viewing product details, and managing a shopping cart.



## Features

Product Listing: View a list of products with search functionality.

Product Details: View detailed information about a selected product.

Shopping Cart: Add products to the cart, update quantities, and remove items.

Total Price Calculation: Automatically calculate the total price of items in the cart.
## Demo



[Watch Demo Video on Google Drive](https://drive.google.com/file/d/1RJNjDkWRx2U_2SBCa7f9mpCiHFD2NRgX/view?usp=sharing)
## Deployment

Prerequisites

Ensure you have Flutter installed on your system. Follow the Flutter installation guide for detailed instructions.

Dependencies: 

Flutter Packages-:

flutter: The Flutter SDK for building the app.
 The core Flutter SDK used for building the app’s UI.

flutter_riverpod: State management solution for Flutter, used to manage and provide the app's state.

shared_preferences: A package for storing simple data in a persistent storage, often used for saving user preferences and settings.

cupertino_icons: Provides iOS-style icons for use in Flutter apps.

Development Dependencies

flutter_test: Provides testing support for Flutter applications.

flutter_lints: Contains a set of recommended lint rules to encourage good coding practices.

Installation:

To install the dependencies, run:

```bash
  flutter pub get
```
Building the App

To build and run the app, follow these steps:

Clone the Repository

First, clone the repository to your local machine using the following command:
```bash
  git clone https://github.com/richa-pandey96/product_listing_app/tree/master
```
Navigate to the Project Directory

Change to the project directory:
```bash
  cd product_listing_app
```
Install Dependencies

Install the required dependencies using Flutter:
```bash
  flutter pub get
```

Build and Run the App

To build and run the app on an emulator or physical device, use the following command:

```bash
  flutter run
```
If you want to build the app for a specific platform, you can use:
```bash
  flutter build [platform]
```
Replace [platform] with apk for Android, ios for iOS, web for web applications, etc.



## Code_Structure

lib/: Contains the main code for the application.

models/: Data models for products and cart items.

providers/: State management providers for products and cart.

screens/: UI screens for product listing, product details, and cart.

widgets/: Reusable UI components.

assets/: products.json file for data.
## Usage

Product Listing Page (product_list_screen.dart)

Displays a list of products with their images, names, and prices.
Products can be tapped to navigate to their details page.

Product Detail Page (product_detail_screen.dart)

Shows detailed information about a selected product, including a larger image, description, and price.
Allows users to add the product to their cart.

Cart Page (cart_screen.dart)

Lists items added to the cart with options to adjust quantity or remove items.
Displays the total price of items in the cart.
Includes improved UI for better user interaction.

Models

Product Model (product.dart): Defines the structure of a product object, including fields like id, name, price, and image URL.
Cart Item Model (cart_item.dart): Defines the structure of a cart item, including fields for quantity and image URL.
Providers

Cart Provider (cart_provider.dart): Manages the state of the cart using Riverpod, allowing addition, removal, and quantity updates of cart items.
Widgets

Product Item (product_item.dart): Displays individual product items in the product list.

Cart Item Widget (cart_item_widget.dart): Displays individual cart items with options to adjust quantity and remove items.
## Acknowledgements

 - Flutter: The framework used for building the app.[Flutter](https://flutter.dev/)
 - Flutter Riverpod:  A provider library for managing state in Flutter applications. .[Riverpod Documentation](https://riverpod.dev/)
 - Shared Preferences: A Flutter plugin for storing simple data in persistent storage.

- Cupertino Icons: A set of icons for iOS style applications.
- Icons and Images: Any sources of icons or images used in the app. [Unsplash](https://unsplash.com/) and [Pexels](https://www.pexels.com/) for images, Material Icons for icons.



## Screenshots

![cart_screen Screenshot](https://github.com/richa-pandey96/product_listing_app/blob/master/cartscreen.jpeg)
https://github.com/richa-pandey96/product_listing_app/blob/master/cartscreen.jpeg

![product_details_screen Screenshot](https://github.com/richa-pandey96/product_listing_app/blob/master/product_details.jpeg)
https://github.com/richa-pandey96/product_listing_app/blob/master/product_details.jpeg

![product_listing_screen Screenshot](https://github.com/richa-pandey96/product_listing_app/blob/master/product_listing_screen.jpeg)
https://github.com/richa-pandey96/product_listing_app/blob/master/product_listing_screen.jpeg




## 🔗 Links
[![github](https://img.shields.io/badge/github-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://github.com/richa-pandey96)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/richa-pandey09/)


