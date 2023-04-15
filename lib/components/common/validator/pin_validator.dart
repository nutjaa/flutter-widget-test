class PinValidator {
  bool isValid(String value) {
    if (!RegExp(r"^\d{6}$").hasMatch(value) || //
        RegExp(r"^(\d)\1+$").hasMatch(value) ||
        RegExp(r"^.*(\d)\1{3}.*$").hasMatch(value)) {
      return false;
    }

    String str = '';
    for (int i = 0; i < value.length; i++) {
      str += (int.parse(value[i]) - i).toString();
    }

    if (RegExp(r"^(\d)\1+$").hasMatch(str)) {
      return false;
    }

    str = '';
    for (int i = 0; i < value.length; i++) {
      str += (int.parse(value[i]) + i).toString();
    }

    if (RegExp(r"^(\d)\1+$").hasMatch(str)) {
      return false;
    }

    return true;
  }
}
