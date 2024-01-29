void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('google.com');
    print(value);
  } on Exception catch (err) {
    print('Exception $err');
  } catch (err) {
    print('alerta, $err');
  } finally {
    print('Holi esta es la funcion finally');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw Exception('No have past stranger');
  //throw 'error en la peticion http';
  //return 'tenemos valor en la peticion';
}
