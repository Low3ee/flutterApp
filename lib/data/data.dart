class UserData {
  static String _fname = "Pepito";
  static String _lname = "Manaloto";
  static String _gender = "laki";
  static int _age = 0;
  static String _email = "pepito.manaloto@email.com";

  static setData(fname, lname, age, gender, email) {
    _fname = fname;
    _lname = lname;
    _age = age;
    _gender = gender;
    _email = email;
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
}
