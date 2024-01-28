//REFACTORIZACION COMPLETA DEL CODIGO DE FUTURE A TRAVES DE AWAIT Y ASYNC
void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('google.com');
    print(value);
  } catch (err) {
    print('alerta, $err');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw 'error en la peticion http';
  //return 'tenemos valor en la peticion';
}
