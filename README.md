# laza-e-commerce App

A Flutter application implementing authentication features using **Clean Architecture**.

---

## 🏗 Architecture

The app is built using **Clean Architecture**, which separates the code into three main layers:


### 🔹 Layer Responsibilities

1. **Presentation Layer**
   - UI screens and widgets
   - State management (Cubit or BLoC)

3. **Data Layer**
   - Implements repository interfaces
   - Handles API calls (Retrofit + Dio)

4. **Core**
   - App-wide utilities, constants, and helpers
   - Error handling
   - Dependency injection (Get_it)


---

## 🚀 Features Implemented

- **Splash Screen** – Intro screen before authentication.  
- **Login Screen** – Allows users to log in.  
- **Register Screen** – Allows new users to create an account.  
- **Verify OTP Screen** – OTP verification after registration or login.  

---

## 📦 Packages Used

These packages were used for the first time in this project:

- `build_runner: ^2.9.0`
- `retrofit: ^4.7.3`
- `retrofit_generator: ^10.0.6`
- `dio: ^5.9.0`
- `json_annotation: ^4.9.0`
- `json_serializable: ^6.11.1`
- `build: ^4.0.2`
- `logger: ^2.6.2`
- `freezed: ^3.2.3`
- `freezed_annotation: ^3.1.0`
- `get_it: ^8.2.0`

---

## 🌐 API Endpoints Used

The app interacts with the following endpoints:

| Feature               | Endpoint                                           | Method |
|----------------------|----------------------------------------------------|--------|
| Register             | `https://accessories-eshop.runasp.net/api/auth/register` | POST   |
| Validate OTP         | `https://accessories-eshop.runasp.net/api/auth/validate-otp` | POST   |
| Resend OTP           | `https://accessories-eshop.runasp.net/api/auth/resend-otp` | POST   |

---

## 💻 How to Run the App

1. **Clone the repository**:

```bash
git clone <your-repo-url>
cd laza-e-commerce
```
2. **Install dependencies:
```
flutter pub get
```
3. **Generate code (Retrofit, Freezed, JsonSerializable):
```
flutter pub run build_runner build --delete-conflicting-outputs
```
4. **Run the app:
```
flutter run
```


check branch
