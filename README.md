# FDDKeyChainKit
FDDKeyChainKit

要使用FDDKeyChainKit  首先默认你有开发经验，准备工作如下

要使用Keychain来操作，前期的准备还是有点麻烦的，因为不是直接可以拿来用的，而需要在工程中额外添加一些东西：
1）导入secutity.framework
先在左侧文件列表中选中项目名称，然后选中TARGETS，中间界面选中Build Phases，在Link Binary With Libraries中点击加号，
搜索找到secutity.framework导入即可：

2）、添加KeychainItemWrapper.h/.m文件
除了secutity.framework，我们还要添加一个东西到工程中，就是KeychainItemWrapper.h和KeychainItemWrapper.m文件，
这两个也需要额外引入才能在我们自己的代码中引用，就当成是引用第三方类库一样吧，这两个文件直接复制进工程里面就好了，可以在我的示例工程中复制。


3）、禁用KeychainItemWrapper.h/.m文件的ARC
现在已经流行ARC机制，我们创建工程也是默认的全局使用ARC，但是这两个文件因为年代久远吧，还不是ARC而是MRC，
可以在其代码中看到大量MRC的内容比如release之类的，如果不加修改，直接运行会报很多错误，所以有两个解决办法，
第一个把所有报错的地方由MRC方式改成ARC方式，这种方法太麻烦，第二种就是直接禁用这个文件的ARC就好了，方法如下：
先在左侧文件列表中选中项目名称，然后选中TARGETS，中间界面选中Build Phases，然后在Compile Sources中找到要禁用的文件，
这里是KeychainItemWrapper.m，然后双击修改其Compiler Flags值为 -fno-objc-arc，如下

