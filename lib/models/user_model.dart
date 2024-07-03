import 'package:flutter/foundation.dart';

class UserModel extends ChangeNotifier {
  String _username = '';
  String _email = '';
  bool _isOnboardingComplete = false;

  String get username => _username;
  String get email => _email;
  bool get isOnboardingComplete => _isOnboardingComplete;

  void setUser(String username, String email) {
    _username = username;
    _email = email;
    notifyListeners();
  }

  void completeOnboarding() {
    _isOnboardingComplete = true;
    notifyListeners();
  }

  void logout() {
    _username = '';
    _email = '';
    _isOnboardingComplete = false;
    notifyListeners();
  }
}
