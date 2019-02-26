###设计模式
代表了最佳实践，一套被反复使用的、多数人知晓的、经过分类编目的、代码设计经验的总结。
为了重用代码、让代码更容易被他人理解、保证代码可靠性。

####GOF 四人帮 Gang of Four

对接口编程而不是对实现编程
优先使用独享组合而不是继承

####六大原则
  1. 开闭原则（Open Close Principle）：对扩展开放，对修改关闭
  2. 里氏替换原则（Liskov Substitution Principle）：任何基类出现的地方，子类一定可以出现
  3. 依赖倒置原则（Dependence Inversion Principle）：针对接口编程，依赖于抽象而不依赖于具体
  4. 接口隔离原则（Interface Segregation Principle）：使用多个隔离的接口，比使用单个接口更好
  5. 迪米特法则（Demeter Principle）：一个实体应当尽量少地与其他实体之间发生相互作用，使得系统功能模块相对独立
  6. 合成复用原则（Composite Reuse Principle）：尽量使用合成/聚合的方式，而不是使用继承
