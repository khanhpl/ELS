
class Validations{

  static bool isValidEmail(String email) {
    RegExp emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
      caseSensitive: false,
      multiLine: false,
    );
    if(emailRegex.hasMatch(email) && email.isNotEmpty){
      return true;
    }
    return false;
  }

  static bool isValidPassword(String password) {
    RegExp passwordRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$',
      caseSensitive: false,
      multiLine: false,
    );
    if(passwordRegex.hasMatch(password) && password.isNotEmpty){
      return true;
    }
    return false;
  }

  static bool isValidPhone(String phone) {
    RegExp passwordRegex = RegExp(
      r'^[0-9]$',
      caseSensitive: false,
      multiLine: false,
    );
    if(passwordRegex.hasMatch(phone) && phone.isNotEmpty){
      return true;
    }
    return false;
  }

  static bool isValidDob(String dob){
    RegExp dobRegex = RegExp(
      r'^\d{4}[\-\/\s]?((((0[13578])|(1[02]))[\-\/\s]?(([0-2][0-9])|(3[01])))|(((0[469])|(11))[\-\/\s]?(([0-2][0-9])|(30)))|(02[\-\/\s]?[0-2][0-9]))$',
      caseSensitive: false,
      multiLine: false,
    );
    if(dobRegex.hasMatch(dob) && dob.isNotEmpty){
      return true;
    }
    return false;
  }

  static bool isValidId(String id){
    RegExp dobRegex = RegExp(
      r'^[0-9]{9}$|^[0-9]{12}$',
      caseSensitive: false,
      multiLine: false,
    );
    if(dobRegex.hasMatch(id) && id.isNotEmpty){
      return true;
    }
    return false;
  }


  static bool isValidGender(String gender){
    RegExp genderRegex = RegExp(
      r'^Nam$|^Nữ$',
      caseSensitive: false,
      multiLine: false,
    );
    if(genderRegex.hasMatch(gender) && gender.isNotEmpty){
      return true;
    }
    return false;
  }

  // static bool isValidId(String id) {
  //   RegExp idRegex = RegExp(
  //     r'^('
  //   );
  // }

}