import 'package:rxdart/rxdart.dart';

void operators() {
  // ------------------ ------------------------
  // ************   Streams   *****************

  // Rx is a Stream for "combine", "timer", "concat"
  Rx.timer('observer2', Duration(seconds: 3)).listen(print);

  // Stream with auto subscribed
  Stream.fromIterable([1, 2, 3]).interval(Duration(milliseconds: 900)).listen(
        (b2) => print('$b2 sec'),
      );

  // Stream.value represents Observable.just wich emmits one value
  final obs = Stream.value('a');
  obs.listen(
    print,
    onDone: () => print('finalizado'),
  );

  // ------------------ ------------------------
}
