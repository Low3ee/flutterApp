class UserData {
  static String _fname = "Pepito";
  static String _lname = "Manaloto";
  static String _gender = "laki";
  static int _age = 0;
  static String _email = "pepito.manaloto@email.com";
  static bool _isRegistered = false;

  static setData(fname, lname, email, status) {
    _fname = fname;
    _lname = lname;
    _email = email;
    _isRegistered = status;
  }

  static getFName() {
    return _fname;
  }

  static getLName() {
    return _lname;
  }

  static getAge() {
    return _age;
  }

  static getGender() {
    return _gender;
  }

  static getEmail() {
    return _email;
  }

  static checkStatus() {
    return _isRegistered;
  }
}
