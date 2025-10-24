import 'package:my_first_app_cifo/module/api_keys.dart';

class ReqResUrl {
  static String urlStringGetSingleUserTest(int id) =>
      "https://reqres.in/api/users/$id";

  static String urlStringGetSingleUserProd(int id) =>
      "https://reqres.in/api/users/$id";

  static String urlStringListPersonasTest = "https://reqres.in/api/users";

  static Map<String, String> headers = {
    //Si la api requiere de autenticación
    'x-api-key': ApiKeys.apiKey,
  };

  static String urlStringResource = "https://reqres.in/api/resource";

  static Map<String, String> errorControl = {'404': 'Error Fatal'};

  // static String myToken = MyToken.token();

  static String urlGetCountry(String nombre) =>
      "https://restcountries.com/v3.1/name/$nombre";
}
