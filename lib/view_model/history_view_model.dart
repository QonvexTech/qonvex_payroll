import 'package:rxdart/rxdart.dart';

class HistoryViewModel{
  HistoryViewModel._private();
  static HistoryViewModel _instance = HistoryViewModel._private();
  static HistoryViewModel get instance => _instance;
  BehaviorSubject<List> _subject = BehaviorSubject();
  Stream<List> get stream => _subject.stream;
  List get current => _subject.value;
  void populate(List data){
    _subject.add(data);
  }
  void append(Map data){
    this.current.add(data);
    _subject.add(this.current);
  }
}