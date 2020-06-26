class Person{
  String name;
  int age;

  Person(this.name,this.age);


  @override
  String toString() {
    return '$age --- $name';
  }

}

class Student extends Person{

  String _school;// 私有变量
  String city;
  String country;
  String name;

  // city 是可选参数
  // country 是默认参数
  Student(this._school,String name, int age,{this.city,this.country = 'China'})
      // 初始化列表：除了调用父类的构造器，在子类构造方法体之前也可以初始化实例变量
      : name = '$country.$city',
      super(name , age){
    print('方法体不是必须的');
  }

  // 匿名构造方法:[类名+方法名]
  // 使用匿名构造方法为类实现多个构造方法
  Student.cover(Student stu):super(stu.name,stu.age){
    print('匿名构造方法');
  }

  // 命名工厂构造方法：factory【类名+方法名】
  // 它可以有返回值，且不需要将类final变量作为参数，是提供一种灵活获取类对象的方式。---可以给_school加上final修饰看效果
  factory Student.stu(Student stu){
    return Student(stu._school, stu.name, stu.age);
  }

  // 重定向构造函数
  Student.redirect(String sch):this(sch,"name",8);

  String get school => _school;

  set school(String value){
    _school = value;
  }

  // 静态方法
  static doPrint(){
    print('-----静态方法--');
  }

}


class Loger{
  static Loger _cache;
  // 工厂构造方法
  factory Loger(){
    if(_cache == null){
      _cache = Loger._internal();
    }
    return _cache;
  }

  Loger._internal();// 匿名构造方法


  void log(String log){
    print(log);
  }

}


class StudyFluter extends Study{

  @override
  void study() {
    print('--study-- fluter');
  }

}

// 可以作为Mixin，也是一个普通类
class PlayGame{

  void play(){
    print("---playing game---");
  }
}

// 可以作为Mixin ，也是一个抽象类
abstract class Study{
  void study();
}

// 只能作为Mixin使用
mixin Work{
  void doWork();

  void complete(){
    print("--on  complete---");
  }
}

// 为类添加特征：mixins    ----java 中的接口
// mixins是在多个类层次结构中重用代码的一种方式。
// 要使用mixins，在with关键字后面跟上一个或多个mixins的名字（用逗号分隔）,且with要用在extends之后
// mixins的特征：实现mixins,创建一个继承object的子类(不能继承其他类),不申明任何构造方法，不能调用super
class Test extends Person with Study{
  Test(String name, int age) : super(name, age);

  @override
  void study() {
    // TODO: implement study
  }

}


// 通过on 实现Mixin的继承
// 使用这个Mixin的类的父类必须实现on后面所有Mixin中的所有接口
mixin TestM on PlayGame,Study,Work{

}

// 无需父类实现所有的Mixin接口
class TestT1 extends Person with PlayGame{
  TestT1(String name, int age) : super(name, age);

}

// 需要父类实现所有的Mixin接口，否则编译报错
//class TestT extends Person with TestM{
//  TestT(String name, int age) : super(name, age);
//
//  @override
//  void complete() {
//    // TODO: implement complete
//  }
//
//  @override
//  void doWork() {
//    // TODO: implement doWork
//  }
//
//  @override
//  void play() {
//    // TODO: implement play
//  }
//
//  @override
//  void study() {
//    // TODO: implement study
//  }
//}


class  TY<T>{

  T t;

  TY(this.t);

  T featchT(){
    return t;
  }

}