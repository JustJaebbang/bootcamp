// Future, async, await 비동기 처리 시 작성

main(){
  checkVersion();
  print('end Process');
}

Future<void> checkVersion() async{
  var version = await lookupVersion();
  print(version);
}

int lookupVersion(){
  return 12;
}