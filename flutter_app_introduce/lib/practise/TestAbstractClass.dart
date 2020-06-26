abstract class TestAbstractClass{

  factory TestAbstractClass(){
    //return TestAbstractClass._internal();// 编译报错
    return TestAbstractClass();
  }

  TestAbstractClass._internal();

  // 抽象函数
  void testAbsFunc();

  void prints(){
    print('--test-- prints');
  }

}