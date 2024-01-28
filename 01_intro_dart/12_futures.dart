void main() {
  print('Inicio del programa');

  httpGet('google.com').then((value) {
    print(value);
  }).catchError((err) {
    print('error $err');
  });
  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 2), () {
    throw 'Error en la peticion http';
    //return 'Respuesta del httpGet';
  });
}
