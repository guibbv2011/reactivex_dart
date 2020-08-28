import 'package:rxdart/rxdart.dart';

void subjects() {
  // --------------------- ------------------------
  //THIS IS OLD VS NEW METHODS FOR DECLARETED A SUBJECT;

  // ************   PUBLISHSUBJECT   *****************

  // OLD: PublishSubject p = PublishSubject();
  final p = PublishSubject<int>(); // NEW

  p.stream.listen(print); // EQUAL

  // OLD p.sink.add(1);
  p.add(1); // NEW

  p.close(); // EQUAL

  // ************   BEHAVIORSUBJECT   *****************
  // OLD BehaviorSubject b = new BehaviorSubject();
  final b = BehaviorSubject<int>(); // NEW

  // ELE CONSEGUE RECUPERAR O ULTIMO VALOR;
  b.add(30);

  b.stream.listen(print); // subscribed

  b.add(60);

  b.close();

  // --------------------- ------------------------
}
