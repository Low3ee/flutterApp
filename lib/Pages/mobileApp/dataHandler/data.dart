class UserData {
  static String? _username;
  static String? _password;

  static setData(usn, pwd) {
    _username = usn;
    _password = pwd;
  }

  static getUserName() {
    return _username;
  }

  static getPassword() {
    return _password;
  }
}
