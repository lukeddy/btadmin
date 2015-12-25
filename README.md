# btadmin
管理后台，基于一下项目修改：

https://github.com/lanyuancom/lanyuan-notebook-3.1v


如若运行项目报错org.hyperic.sigar.SigarException: no sigar-amd64-winnt.dll in java.library.path，是因为sigar所需的动态链接库没有加进来。
本项目的dll目录下有所需的依赖库，当然可以自己下载，下载地址如下：

http://sourceforge.net/projects/sigar/files/

idea中具体如何添加java.library.path请参考：

http://shikezhi.com/html/2015/java_1225/713779.html

http://shikezhi.com/html/2015/tools1_1225/713780.html
