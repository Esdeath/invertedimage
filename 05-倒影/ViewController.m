
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *v;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CAReplicatorLayer *layer = (CAReplicatorLayer *)self.v.layer;

    layer.instanceCount = 2;
    
    // 先Y轴偏移
    CATransform3D transform =  CATransform3DMakeTranslation(0, self.v.bounds.size.height, 0);
    
    // 在旋转
    transform = CATransform3DRotate(transform, M_PI, 1, 0, 0);
    
    // 设置复制层的形变
    layer.instanceTransform = transform;
    
    // 设置颜色通道偏移量，相等上一个一点偏移量，就是阴影效果
    layer.instanceRedOffset = -0.1;
    layer.instanceGreenOffset = -0.1;
    layer.instanceBlueOffset = -0.1;
    layer.instanceAlphaOffset = -0.1;
    
}

@end
