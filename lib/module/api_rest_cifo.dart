import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_first_app_cifo/module/classes/ejercicio_paises/country.dart';
import 'package:my_first_app_cifo/module/classes/ejercicio_reqres/persona.dart';
import 'package:my_first_app_cifo/module/classes/ejercicio_reqres/resource.dart';
import 'package:my_first_app_cifo/module/urls.dart';

void getReqRespService() async {
  String urlString = "https://reqres.in/api/users";

  Uri url = Uri.parse(urlString);

  Map<String, String> headers = {
    //Si la api requiere de autenticación
    'x-api-key': 'reqres-free-v1',
  };

  await http.get(url, headers: headers).then((http.Response res) {
    // print(res);
    final bodyString = res.body;
    // print(bodyString);

    final body = jsonDecode(bodyString);

    // print("${body['data']}");

    final List<dynamic> data = body['data'];

    print(data);

    List<Persona> personas = data.map((element) {
      return Persona.fromJson(element);
    }).toList();

    // List<Persona> personas = data.map((e) => Persona.fromJson(e)).toList();

    for (var persona in personas) {
      print(persona.id);
    }
  });

  print(url);
}

void getSingleUser(int id) async {
  String urlString = "https://reqres.in/api/users/$id";

  Uri url = Uri.parse(urlString);

  Map<String, String> headers = {
    //Si la api requiere de autenticación
    'x-api-key': 'reqres-free-v1',
  };

  await http.get(url, headers: headers).then((http.Response res) {
    print(url);
    // print(res);
    final bodyString = res.body;
    // print(bodyString);

    final body = jsonDecode(bodyString);

    print("${body['data']}");

    Persona persona = Persona.fromJson(body['data']);

    print(persona);
  });
}

Future<Persona?> getSingleUserObjetct(int id) async {
  String urlString = ReqResUrl.urlStringGetSingleUserProd(id);

  Uri url = Uri.parse(urlString);

  Persona? persona;

  try {
    await http.get(url, headers: ReqResUrl.headers).then((http.Response res) {
      // print(url);
      // print(res);
      final bodyString = res.body;
      // print(bodyString);

      final body = jsonDecode(bodyString);

      // print("${body['data']}");

      persona = Persona.fromJson(body['data']);

      // print(persona);
    });
  } catch (e) {
    // persona = Persona(
    //   id: 0,
    //   email: '',
    //   errorControl: ErrorControl(
    //     statusCode: 404,
    //     errorMessage: 'Esta peticion ha fallado',
    //   ),
    // );
    print('$e');
  }

  return persona;
}

Future<List<Persona>> getListPersonasObject() async {
  String urlString = ReqResUrl.urlStringListPersonasTest;

  Uri url = Uri.parse(urlString);

  List<Persona> personas = [];

  try {
    await http.get(url, headers: ReqResUrl.headers).then((http.Response res) {
      final bodyString = res.body;

      final body = jsonDecode(bodyString);

      final List<dynamic> data = body['data'];

      personas = data.map((element) {
        return Persona.fromJson(element);
      }).toList();
    });
  } catch (e) {
    print('$e');
  }

  return personas;
}

Future<List<Resource>> getListResourcesObject() async {
  String urlString = ReqResUrl.urlStringResource;
  Uri url = Uri.parse(urlString);

  List<Resource> resources = [];
  try {
    await http.get(url, headers: ReqResUrl.headers).then((http.Response res) {
      final bodyString = res.body;

      final body = jsonDecode(bodyString);

      final List<dynamic> data = body['data'];

      resources = data.map((element) {
        return Resource.fromJson(element);
      }).toList();
    });
  } catch (e) {
    print('$e');
  }
  return resources;
}

Future<Country?> getListCountriesObjetc(String nombre) async {
  String urlString = ReqResUrl.urlGetCountry(nombre);

  Uri url = Uri.parse(urlString);

  Country? country;

  try {
    await http.get(url).then((http.Response res) {
      final bodyString = res.body;
      final body = jsonDecode(bodyString);

      List<dynamic> myResponse = body;
      country = Country.fromJson(myResponse.first);
    });
  } catch (e) {
    print('$e');
  }

  return country;
}
