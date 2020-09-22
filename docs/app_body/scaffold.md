# Scaffold 脚手架

**属性及描述：**  
```
  const Scaffold({
    Key key,
    // 显示在界面顶部的一个 AppBar
    PreferredSizeWidget appBar,
    
    // 当前界面要显示的主要内容 Widget
    Widget body,
    
    // 悬浮按钮
    Widget floatingActionButton,
    
    // 悬浮按钮放置位置 FloatingActionButtonLocation（枚举）
    // endFloat      右边，居底部控件之上面
    // centerFloat   中间，居底部控件之上面
    // endDocked     右边，浮动在底部控件之上
    // centerDocked  中边，浮动在底部控件之上
    FloatingActionButtonLocation floatingActionButtonLocation,
    
    // 悬浮按钮动画 默认动画：FloatingActionButtonAnimator.scaling
    FloatingActionButtonAnimator floatingActionButtonAnimator,
    
    // 固定在下方显示的按钮，比如对话框下方的确定、取消按钮
    List<Widget> persistentFooterButtons,
    
    // 抽屉菜单控件(左滑) 主动调用：Scaffold.of(context).openDrawer();
    Widget drawer,
    // 抽屉菜单控件(右滑) 主动调用：Scaffold.of(context).openEndDrawer();
    Widget endDrawer,
    
    // 底部的导航栏
    Widget bottomNavigationBar,
    
    Widget bottomSheet,
    
    // 背景色(默认使用的是 ThemeData.scaffoldBackgroundColor 的值)
    Color backgroundColor,
    
    // 类似于 Android 中的 android:windowSoftInputMode='adjustResize'，控制界面内容 body 是否重新布局来避免底部被覆盖了，比如当键盘显示的时候，重新布局避免被键盘盖住内容。默认值为 true
    bool resizeToAvoidBottomPadding,
    
    bool resizeToAvoidBottomInset,
    
    // 是否填充顶部状态栏
    bool primary = true,
    
    DragStartBehavior drawerDragStartBehavior = DragStartBehavior.start,
    bool extendBody = false,
    bool extendBodyBehindAppBar = false,
    Color drawerScrimColor,
    double drawerEdgeDragWidth,
    bool drawerEnableOpenDragGesture = true,
    bool endDrawerEnableOpenDragGesture = true,
  })
```