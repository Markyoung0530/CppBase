#  1. static

## (1)Class和Struct之外的static

static function or static variable=>仅在本文件中可见(局部变量、局部函数)

## (2)Class 和Struct以内的static

一个类中只有一个实例

## (3)local static

```c++
void function(){
    static int i = 0;//每次调用function时都是同一个i，值将保留
}
```



# 2. const

## (1)const variable

```c++
const int MAXAGE = 90//变量不可改变
```

## (2)const pointer

```c++
const int* ptr = new int;//不能改变*ptr，可以改变ptr的指向
*ptr = 2//错误！
//--------------------------------------------------------
int* const ptr = new int;//不能改变ptr的指向，可以改变*ptr
*ptr = 2//可以
ptr = nullptr;//错误！
//---------------------------------------------------------
const int* const ptr = new int;//既不能改变*ptr,又不能改变ptr的指向
```

## (3)method const

```c++
class Entity{
private:
  int m_X,m_Y;
  mutable int var;//mutable意味着这个变量可以被修改
public:
  int GetX() const{//这个方法承诺不会修改实际的类, 只读不写
    m_X = 2;//错误！
    var = 2;//可以！因为有mutable,即使在const方法中
    return m_X;
  }
}
```



# 3.构造函数成员初始化列表

为了简洁, 代码风格

```c++
class Entity{
private:
  std::string m_Name;
  int x,y,z;
public:
  Entity()
    : m_Name("Unknown"), x(0), y(0), z(0)//成员初始化列表
  {
    //other code
  }
  Entity(std::string& name)
    : m_Name(name)
  {
    //other code
  }
}
```

# 4.在堆和栈上实例化对象

```c++
Entity{
public:
    std::string m_name;
	
    Entity()//无参默认构造函数
        : m_name("Unknown")
    {
        //other code
    }
    Entity(std::string& name)
        : m_name(name)
    {
        //other code
    }
    const std::string& GetName() const {
		return m_name;
    }
}
```

```c++
void function(){
    Entity e0;//调用默认构造函数
    Entity e1("yang");//调用第2个构造函数
    //e0 e1 e2在栈上建立, 生命周期止于离开花括号"}""
    {
        Entity e2("cherno");
    }
    //以下实例e3在堆上建立
    Entity* e3 = new Entity("cherno");
    delete e3;//堆上分配的内存需要手动释放
}
int main(){
	function();
}
```



# 5.隐式转换与explicit关键字

## 隐式转换

```c++
Entity{
public:
    std::string m_name;
	int m_age
    Entity(std::string& name)
        : m_name(name), m_age(-1)
    {
        //other code
    }
    Entity(int age)
        : m_name("Unknown"), m_age(age)
    {
        //other code
    }
}
void PrintEntity(const Entity& e){
    //printing
}
```

```c++
int main(){
    PrintEntity(22);//int 22隐式转换成Entity(22),因为有可以接受22的构造函数
    PrintEntity(std::string("cherno"));//把"cherno"转换成string,再进行一次隐式转换
    Entity a = 22;
    Entity b = "cherno";
    //以上4个地方都用了隐式转换
    //隐式转换只能进行一次
    PrintEntity("cherno");//不可以, 因为"cherno"不是std::string，而是const char[]
}
```

## explicit关键字(禁用隐式转换)

explicit关键字用在构造函数前可以禁用隐式转换

```c++
Entity{
public:
    std::string m_name;
	int m_age
    explicit Entity(std::string& name)
        : m_name(name), m_age(-1)
    {
        //other code
    }
    explicit Entity(int age)
        : m_name("Unknown"), m_age(age)
    {
        //other code
    }
}
```



# 6.运算符及其重载

