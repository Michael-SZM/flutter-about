import 'package:flutterappintroduce/practise/oop_p.dart';

class GrammarPrac{

  // 命名可选参数,
  void test2({bool bold,bool hidden,bool isTest}){

  }

  // 位置可选参数
  String say(String from, String msg, [String device,int a,String s]) {
    var result = '$from says $msg';
    if (device != null) {
      result = '$result with a $device';
    }
    return result;
  }
  
  
  testOOP(){
    var stu = Student.redirect("天津大学");
  }

}

