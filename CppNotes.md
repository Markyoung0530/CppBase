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

```C++
struct Vector2
{
    float x,y;
    
    Vector2 (float x, float y)
        :x(x), y(y) {}
    
    Vector2 add(const Vector2& other) const {
        return(Vector2(x+other.x,y+other.y);
    }
    
    Vector2 operator+(const Vector2& other) const{//重载+
        return add(other);
    }
    
}

std::ostream& operator<<(std::ostream& stream, const Vector2& other){//重载<<
	stream << "<" <<other.x << "," << other.y << ">" << std::endl;
    return steam;
}
               
int main(){
    Vector2 position(4.0f,2.0f);
    Vector2 speed(0.5f,1.5f);
    Vector2 result = position.add(speed);//传统方法
    Vector2 result2 = position + speed;//运算符重载后两个向量直接相加
    
    std::cout << result2 << std::endl;//重载<<运算符
}
```



# 7.智能指针(unique、shared)

```c++
#include <iostream>
#include <memory>
class PointerEntity {
public:
    PointerEntity(){
        std::cout << "Created the PointerEntity!" << std::endl;
    }
    ~PointerEntity(){
        std::cout << "Destroyed the PointerEntity!" << std::endl;
    }
    void print(){
        std::cout << "Print something" << std::endl;
    }
};
```

## (1)unique_ptr

unique_ptr是作用域指针, 超出作用域后会自动销毁.不能复制, 指向某块地址的唯一指针

```c++
int main() {
    {
        std::unique_ptr<PointerEntity> e0(new PointerEntity());//不推荐方法
        std::unique_ptr<PointerEntity> e1 = std::make_unique<PointerEntity>();//推荐方法
        std::shared_ptr<PointerEntity> e2 = std::make_shared<PointerEntity>();//shared_ptr

        e0->print();
        e1->print();
    }//离开作用域, 将调用析构函数
}
```

## (2)shared_ptr && weak_ptr

使用引用计数, 当引用计数为0时, 指针删除

```c++
int main() {
    {
        std::shared_ptr<PointerEntity> e0;
        {
            std::shared_ptr<PointerEntity> sharedptr = std::make_shared_ptr<PointerEntity>();
            e0 = sharedptr;//shared_ptr可以复制
            
            std::weak_ptr<PointerEntity> e_weak = sharedptr
                //sharedptr拷贝给weak_ptr不会增加引用计数
                
        }//离开这个作用域, sharedptr死亡, 但是它指向的PointerEntity没有死亡, 因为还有e0指向它
    }//离开这个作用域,所有指向实例的指针死亡,实例调用析构函数
}
```



# 8.STL

## 1.Vector

顺序容器, 内存连续，支持快速随机访问(O(1))。尾部插入\删除高效(O(1))，中间插入\删除较慢(O(n))。

容量不足是动态扩容(1.5-2倍)

```c++
//Vector初始化方法
//1:默认构造 (创建一个空的vector,不含任何元素)
std::vector<int> v1;
//2:指定元素个数及初始值
std::vector<int> v2(5)				// 5个int,默认值为0
std::vector<int> v3(5,42)			// 5个int,初始值为42
//3:列表初始化
std::vector<int> v4{1, 2, 3, 4, 5}; // 直接包含5个元素
std::vector<int> v5 = {6, 7, 8};    // 等价写法
//4:拷贝构造
std::vector<int> v6(v5);       		// 拷贝v5的内容
std::vector<int> v7 = v5;      		// 等价写法
//5:移动构造
std::vector<int> v8(std::move(v7)); // v7变为空，资源转移给v8
//6:使用迭代器范围初始化
std::list<int> lst{9, 10, 11};
std::vector<int> v9(lst.begin(), lst.end()); // 从list复制元素
//7:使用assign()(清空并重用现有vector)
std::vector<int> v10;
v10.assign(3, 100);            		// 3个100
v10.assign(v4.begin(), v4.end()); 	// 复制v4的内容
v10.assign({12, 13, 14});       	// 直接赋值列表（C++11）
//8:从数组初始化
int arr[] = {15, 16, 17};
std::vector<int> v12(arr, arr + 3); // 复制数组内容
//9:使用resize()
std::vector<int> v13;
v13.resize(4);     					// 4个元素，默认值0
v13.resize(6, 99); 					// 6个元素，新增的2个值为99
```

```c++
//常用方法
std::vector<int> v(5);

v.size()			// 返回当前元素数量
v.capacity()		// 返回当前分配的内存可容纳的元素数量
v.reserve(100)		// 预分配100个元素的内存
v.resize(4)			// 为v分配4个元素的内存,默认值为0
v.resize(6,99)		// 为v分配6个元素的内存,新增2个值为99
v[5]				// 随机访问,不检查边界
v.at[index]			// 随机访问,检查边界
v.front()/.back()	// 访问收尾元素
v.data()			// 返回底层数组指针
v.begin()/.end()	// 返回迭代器
v.push_back()		// 拷贝元素到尾部
v.emplace_back()	// 直接在尾部构造元素, 避免拷贝
v.pop_back()		// 弹出尾部元素
v.insert(iterator pos, const T& value)	// 在指定位置插入元素
v.erase(iterator pos)					// 删除指定位置元素
v.erase(iterator first, iterator last)	// 删除指定区间元素
v.shrink_to_fit()	// 请求释放未使用内存
```

## 2.Array

顺序容器, 大小固定

```c++
//Array初始化
std::array<int, 3> arr1{1,2,3};
std::array<std::string, 2> arr2{"Hello", "World"};
std::array<int, 5> arr3{10, 20};		// 后3个元素为0
std::array<int, 3> arr4 = arr1; 		// 拷贝arr1的内容
arr1.fill(0); 							// arr1变为 {0, 0, 0}

std::array<int, 3> a{1, 2, 3}, b{4, 5, 6};
a.swap(b); // a变为{4,5,6}, b变为{1,2,3}


```



## 3.List

顺序容器, 双向链表, 每个节点包含数据和前后指针, 支持高效插入/删除, 不支持随机访问

```c++
//List初始化
//1:默认构造
std::list<int> list1; 				// 空链表
//2:指定元素个数及初始值
std::list<std::string> list2(3); 	// 3个空字符串
std::list<int> list3(5, 100); 		// 5个100
//3:列表初始化
std::list<int> list4{1, 2, 3, 4, 5};// 直接包含5个元素
//4:拷贝构造
std::list<int> list6(list4);    	// 拷贝list4的内容
std::list<int> list7 = list4;   	// 等价写法
//5:使用迭代器范围初始化
std::vector<int> vec{6, 7, 8};
std::list<int> list9(vec.begin(), vec.end()); // 从vector复制元素
//6:从数组初始化
int arr[] = {12, 13, 14};
std::list<int> list12(arr, arr + 3); // 复制数组内容
```

```c++
//常用方法
std::list<int> list1{1,2,3};std::list<int> list2{4,5};

list1.splice(list1.end(), listB); 	// 链表拼接,list1变为{1,2,3,4,5}, list2为空,无拷贝
list1.merge(list2);					// 链表合并,list2为空
list.sort()							// 链表排序, 时间复杂度O(nlg(n))
list.unique()						// 去重
```

## 4.Forward_list

顺序容器, 基于单向链表, 每个节点包含数据元素和指向下一元素的指针, 无size()方法

适用于高频头部操作, 如实现栈, 不适用于高频尾部操作

```c++
//初始化方法
std::forward_list<int> flist1;
std::forward_list<std::string> flist2(3); 		// 3个空字符串
std::forward_list<int> flist3(5, 100); 			// 5个100
std::forward_list<int> flist4{1, 2, 3, 4}; 		// 包含4个元素
std::forward_list<int> flist5(flist4); 			// 拷贝flist4

//从其他容器构造
std::vector<int> vec{5, 6, 7};
std::forward_list<int> flist7(vec.begin(), vec.end());
```

```c++
//常用方法
std::forward_list<int> flistA{1, 2}, flistB{3, 4};

flistA.splice_after(flistA.begin(), flistB); 	// flistA变为{1,3,4,2}
flistA.merge(flistB);							// 合并两个单向链表
flistA.sort()									// 排序
flistA.unique()									// 去重
flist.push_front()								// 从头压入
flist.pop_front()								// 弹出头部
```

## 5.Deque

顺序容器, 双端队列, 底层数据结构由多个固定大小的内存块(称为段)组成, 分块大小: 512bytes~4KB, 分块通过指针数组管理

高效的头尾操作效率, 可以随机访问, 适用于队列和栈的实现

## 6.Set

关联容器, 基于红黑树实现

```c++
//初始化方法
std::set<int> s1; 							// 空集合，元素按升序排列
std::set<int, std::greater<int>> s2; 		// 降序排列
std::set<int> s3{3, 1, 4, 1, 5}; 			// 自动去重并排序 → {1, 3, 4, 5}
//从其他容器初始化
std::vector<int> vec{5, 2, 8};
std::set<int> s4(vec.begin(), vec.end()); 	// {2, 5, 8}
std::set<int> s5(s3); 						// 拷贝s3的内容
```

```c++
//常用方法
s1.insert(10); 								// 插入10
auto [it, success] = s1.insert(10); 		// success为false（已存在）
s1.emplace(20); 							// 构造并插入20
s1.erase(10); 								// 删除值为10的元素
auto it = s1.find(20);						// 返回找到元素的迭代器,如未找到返回set.end()
s1.contains(20)								// 判断set是否包含元素20
s1.count(20)								// 数set中含有几个元素20(只可能是0或1)
set.lower_bound(val)						// 返回第一个不小于val的迭代器
set.upper_bound(val)						// 返回第一个大于val的迭代器
//性能优化(预排序数据插入)
auto it = set.end()
for(int val : sorted_values)
{
    it = set.insert(it, val);				// 提示插入位置，避免搜索
}
```

## 7.Unordered_set

无序关联容器, 基于哈希表实现

## 8.Multiset

允许键值重复, 其余同set

## 9.Map

关联容器, 基于红黑树实现, 保证key的有序存储

储存内容: 键值对(pair), 父节点指针、左子节点指针、右子节点指针

```c++
//初始化方法
std::map<std::string, int> m3{				// 直接初始化pair
    {"apple", 3}, 
    {"banana", 5}, 
    {"cherry", 2}
};
											// 从其他容器复制键值对
std::vector<std::pair<int, std::string>> vec{{1, "a"}, {2, "b"}};
std::map<int, std::string> m4(vec.begin(), vec.end());

std::map<std::string, int> m5(m3); 			// 拷贝m3的内容
```

```c++
// 常用方法
auto [it, success] = m3.insert({"date", 4}); 	// 插入新键值对
m3.emplace("grape", 6);							// 直接构造键值对（避免拷贝）
m3["fig"] = 5;									// 若键不存在，插入新元素
m3.erase("apple");         						// 删除键为"apple"的元素
```

## 10.Unordered_map

无序关联容器, 基于哈希表实现

## 11.Multimap

允许重复key, 其余同map（如学生ID对应多个课程）

## 12.Stack

容器适配器, 底层数据结构默认使用deque, 也可使用vector或list, 后进先出(LIFO)

```c++
//初始化方法
std::stack<int> s1; 								// 底层容器为 deque<int>
std::stack<int, std::vector<int>> s2; 				// 底层容器为 vector<int>
std::stack<std::string, std::list<std::string>> s3; // 底层容器为 list<string>
// 从已有容器拷贝初始化
std::deque<int> dq{1, 2, 3};
std::stack<int> s4(dq);       						// 拷贝构造，底层容器为 deque
std::stack<int> s5(std::move(dq)); 					// 移动构造，dq 变为空
std::stack<int> s6(std::deque<int>{4, 5, 6}); 		// 使用 deque 的列表初始化
													// (stack本身不支持列表初始化)
```

```c++
//常用方法
stack.push();										// 压栈
stack.emplacements(val)								// 在栈顶构造元素
stack.pop()											// 弹栈
stack.top()											// 访问栈顶元素(不弹)

```

## 13.Queue

容器适配器, 底层数据结构默认使用deque, 也可使用list, 先进先出(FIFO)

## 14.Priority_queue

