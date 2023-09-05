import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "date") {
    if (!GetUtils.isDateTime(val)) {
      return "not valid date";
    }
  }
  if (type == "email") {
    if (!GetUtils.isNumericOnly(val)) {
      return "not valid number";
    }
  }

  if (val.isEmpty) {
    return "can't be Empty";
  }

  if (val.length < min) {
    return "can't be less than $min";
  }

  if (val.length > max) {
    return "can't be larger than $max";
  }
}
