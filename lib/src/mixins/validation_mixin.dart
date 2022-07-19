class ValidationMixin {
  String? validateEmail(String? value) {
    if (value != null) {
      if (!value.contains('@')) return 'Enter valid Email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value != null) {
      if (value.length < 4) return 'Password must more than 4 character';
    }
    return null;
  }
}
