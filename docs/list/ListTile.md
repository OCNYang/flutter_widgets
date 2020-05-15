# ListTile  

## 基本使用

**描述：**固定高度的单个行，通常包含一些文本以及头部图像和尾部图标。  
**用处：**从它的名字就可以看出来，一般是用来充当 ListView 的 Item。或用在 Column、Drawer 中。   

**示意图：**  
![list_tile_atts](https://raw.githubusercontent.com/OCNYang/flutter_widgets/ocnyang_widgets/docs/list/list_tile_atts.png)  

**属性及描述：**  

```  
const ListTile({
    Key key,
    Widget leading, //头部图片（显示在标题前）
    Widget title, //标题
    Widget subtitle, //副标题
    Widget trailing, //尾部图标
    bool isThreeLine = false, //是否 3 行显示
    bool dense, //是否显示为紧凑模式（开启时整体条目会显示的更小）
    VisualDensity visualDensity, //组件的视觉密度，通过调整它可以使得标准 Material 组件之间更加紧凑或疏远。例如：VisualDensity(horizontal: -4, vertical: -4)
    EdgeInsetsGeometry contentPadding, //内边距
    bool enabled = true, //是否可用（禁用点击事件）
    GestureTapCallback onTap, //点击事件
    GestureLongPressCallback onLongPress, //长按事件
    bool selected = false, //选中状态（被选中后字体颜色与主题色一致，即 title、subtitle、secondary 是否采用 activeColor 的颜色）
    Color focusColor,
    Color hoverColor,
    FocusNode focusNode, //焦点管理
    bool autofocus = false, //自动获取焦点
  })
```  

> **提示：**
> * leading 通常是个 Icon 或 CircleAvatar；title/subtitle 通常是 Text；trailing 通常是 Icon；
> * 上面都是通常的用法，实际使用中 leading/title/subtitle/trailing 都可以是任何 widget，但建议采用通常的用法
> * title 只可单行显示，subtitle 根据 isThreeLine 决定；当不设置 subtitle 时（且 isThreeLine = false），整体条目会单行显示。
> * leading/trailing 小部件的高度会受到整体条目固定高度的限制，宽度不受限制。（整体条目的高度会根据 [是否有subtitle、isThreeLine、dense] 固定为 [48.0、56.0；64.0、72.0；76.0、88.0] 中的某固定值）

各种实际的展示效果：  
![list_tile](https://raw.githubusercontent.com/OCNYang/flutter_widgets/ocnyang_widgets/docs/list/list_tile.png)

更多使用方法可以查看[代码]()

## 其他类似部件  
除 ListTile 之外，还有几种和它比较类似，有着各自独特展示效果和用处的控件，比如：SwitchListTile、RadioListTile、CheckboxListTile、AboutListTile。  
另外需要注意的是，这些类似控件和 ListTile 并非继承关系，你可以把它们看成构成关系。比如 SwitchListTile 是由一个 Switch 和 一个ListTile 构成的；其实 SwitchListTile 内部 `build` 方法返回的就是一个 ‘用 Switch 做为 trailing 的 ListTile’。  

> 为什么不是 SwitchListTile 等控件和 ListTile 不是继承关系？  
> 这里不直接解释具体原因，把 Flutter 中的一个关于 Widget 概念引用过来，我想大概就可以解释上面的问题了。  
> **在 Flutter 中，Widget 的功能是 “描述一个 UI 元素的配置数据”，它就是说，Widget 其实并不是表示最终绘制在设备屏幕上的显示元素，而它只是描述显示元素的一个配置数据。 实际上，Flutter 中真正代表屏幕上显示元素的类是 Element，也就是说 Widget 只是描述 Element 的配置数据！**  
> 所以 SwitchListTile 和 ListTile 只是两张不同的参数配置表，作为配置表完全没必要继承另外一张配置表：
> 1. 这样你以后完全可以拿着这张配置表，根据这些配置参数，构建成自己想要的展示效果（即重写 `build` 方法，返回一个自己实现的想要的布局）。
> 2. 另外当并非继承关系时，你可以添加一些特有的事件或方法，同时可以屏蔽原有配置表中不再使用的方法事件和配置。

### SwitchListTile

**描述：**带有 Switch 的 ListTile。

**属性及描述：**  

```
const SwitchListTile({
    Key key,
    @required this.value, //当前 switch 的状态 true or false
    @required this.onChanged, //switch 开关变化时回调
    this.activeColor, //设定该 Tile 的主色，默认 title、subtitle、icon 等都显示该颜色
    this.activeTrackColor, //打开时，switch 左边尾部的颜色
    this.inactiveThumbColor, //关闭时，圆的颜色
    this.inactiveTrackColor, //关闭时 switch 右边的颜色
    this.activeThumbImage, //打开时，也可以给圆设置一个 image
    this.inactiveThumbImage, //关闭时，可以给圆设置一个 image
    this.title,
    this.subtitle,
    this.isThreeLine = false,
    this.dense,
    this.contentPadding,
    this.secondary, //左侧顶部的 widget，一般是个 Icon，也可以定义成其他（类似 ListTile.leading）
    this.selected = false,
    this.autofocus = false,
  })
```  

![switchlisttile](https://raw.githubusercontent.com/OCNYang/flutter_widgets/ocnyang_widgets/docs/list/switchlisttile.jpg)  

从上面属性中你可以看出，这些属性基本上就是把 ListTile 和 Switch 两个控件的属性合在了一起。这里不做太多介绍。

### CheckboxListTile

**描述：**带有一个 复选框 的 ListTile。  
**属性及描述：**  
```
const CheckboxListTile({
    Key key,
    @required this.value, //当前选中的状态 true or false
    @required this.onChanged, //选中状态变化时回调
    this.activeColor, //设定该 Tile 的主色，默认 title、subtitle、icon 等都显示该颜色
    this.checkColor, //选中时的颜色
    this.title,
    this.subtitle,
    this.isThreeLine = false,
    this.dense,
    this.secondary, //类似 ListTile.leading 或 ListTile.trailing
    this.selected = false,
    this.controlAffinity = ListTileControlAffinity.platform, //文字、图标、复选框的排列顺序
    this.autofocus = false,
  })
```

![checkboxlisttile](https://raw.githubusercontent.com/OCNYang/flutter_widgets/ocnyang_widgets/docs/list/checkboxlisttile.jpg)  

这里的属性也都是 Checkbox 和 ListTile 合并的配置表，都能一看就懂。  
> **提示：**  
> 这里值得注意的是，对比 CheckBox 这里缺少一个属性 tristate，（这个属性决定了 CheckBox 有几种选中状态。当它的值为 true 时，CheckBox 会有 3 种状态 [true、null、false]）
> controlAffinity 属性的值决定了 Checkbox 在 ListTile 中的位置，`ListTileControlAffinity`是个枚举类，它有 3 种类型：
> * leading 把 Checkbox 放到 ListTile.leading 所在的位置，而secondary 部件放到条目的另一端
> * trailing 同理
> * platform 根据当前手机系统平台决定 Checkbox 的位置，而secondary 部件放到条目的另一端

### RadioListTile

**描述：**带有 单选框 的 ListTile。  
**属性及描述：**  
```
const RadioListTile({
    Key key,
    @required this.value, //当前 item 所代表的值，
    @required this.groupValue, //radio 所在组的值，如果value==groupValue 则为  选中状态
    @required this.onChanged, //选中该 radio 时，回调该方法
    this.toggleable = false, //是否可以切换
    this.activeColor, //选中后，单选框的颜色
    this.title,
    this.subtitle,
    this.isThreeLine = false,
    this.dense,
    this.secondary, //类似 ListTile.leading 或 ListTile.trailing
    this.selected = false,
    this.controlAffinity = ListTileControlAffinity.platform, //文字、图标、单选框的排列顺序
    this.autofocus = false,
  })
```

![radiolisttile](https://raw.githubusercontent.com/OCNYang/flutter_widgets/ocnyang_widgets/docs/list/radiolisttile.jpg)  

大多数属性应该都能理解，可以参看上面几个同名的属性介绍。  
> **注意点：**
> * 和 Radio 的属性一样，当 value 的值（可以是任何类型值）和 groupValue 的值相同时，Radio 就是选中状态。
> * 多个 RadioListTile 条目的 value 值的**类型相同**时，那么就可以理解为它们属于同一组的。
> * value 和 groupValue 是以 == 比较是否相同的，所以如果是把自定义类作为 value 类型，记得重写 == 。

### AboutListTile
这是几个控件中的一个略另类的一种。

**描述：**以 ListTile 的布局显示 App 相关信息。自带点击事件，点击后弹出弹窗。通常在 Drawer 中使用。  
**属性及描述：**  
```
const AboutListTile({
    Key key,
    Widget icon,  //等于 ListTile.leading
    Widget child, //等于 ListTile.title，如果不设置，将显示 applicationName
    String applicationName, //弹窗的标题
    String applicationVersion, //弹窗的版本号
    Widget applicationIcon, //弹窗的应用图标
    String applicationLegalese, //弹窗的法律信息
    List<Widget> aboutBoxChildren, //弹窗中的 children
    bool dense,
  })
```

AboutListTile 默认有一个点击事件，点击后会调用 showAboutDialog(...）方法，弹出一个展示 App 相关信息的弹窗。
**弹窗效果及说明：**  
![aboutlisttile](https://raw.githubusercontent.com/OCNYang/flutter_widgets/ocnyang_widgets/docs/list/aboutlisttile.jpg)    


