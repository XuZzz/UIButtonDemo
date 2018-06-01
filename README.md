# UIButtonDemo
XZButton

继承自UIButton，使用了Masonry，使用前请pod masonry。

需要两个属性：
1. type ：XZButton的样式
2. textMargin： 图片与文字的间距

type是个枚举：
typedef NS_ENUM(NSInteger, XZButtonType){
    XZButtonTypeNormal, // 图左文右
    XZButtonTypePicRight,// 图右文左
    XZButtonTypePicTop,// 图上文下
    XZButtonTypePicBottom,// 图下文上
};

初始化方法：

1.XZButton *button = [[XZButton alloc] initWithFrame:CGRectMake(X, Y, WIDTH, HEIGHT) withType:XZButtonTypePicBottom andMargin:SAFEMARGIN];
    
2.XZButton *button = [[XZButton alloc] init];
  button.type = XZButtonTypePicRight;   
  button.textMargin = 10;
  
给type和textMargin两属性赋值后，就可以正常给button赋值了：
  [button setTitle:@"hahaha" forState:UIControlStateNormal];
    
  [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
  
  button.titleLabel.font = [UIFont systemFontOfSize:14.0f weight:UIFontWeightThin];
  
  button.imageView.image = [UIImage imageNamed:@"sina_gray.png"];
  


