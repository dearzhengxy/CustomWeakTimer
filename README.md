# CustomWeakTimer
通过分类的方式自定义Timer，再也不用怕由于target强引用controller后，导致循环引用，导致controller不能释放了！

使用方法：

@interface ViewController ()

@property(nonatomic,strong) NSTimer*timer;

@end

初始化：
_timer=[NSTimer scheduledWeakTimerWithTimeInterval:1 target:self selector:@selector(dosomeThing) userInfo:nil repeats:YES];


