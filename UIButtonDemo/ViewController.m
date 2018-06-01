//
//  ViewController.m
//  UIButtonDemo
//
//  Created by Xu on 2018/6/1.
//  Copyright © 2018年 com.delinshe. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "XZButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    XZButton *button = [[XZButton alloc] initWithFrame:CGRectMake(100, 100, 30, 100) withType:XZButtonTypePicBottom andMargin:10];
    
    XZButton *button = [[XZButton alloc] init];
    
    button.type = XZButtonTypePicRight;
    
    button.textMargin = 10;
    
    [self.view addSubview:button];
    
    [button setTitle:@"hahaha" forState:UIControlStateNormal];
    
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    button.titleLabel.font = [UIFont systemFontOfSize:14.0f weight:UIFontWeightThin];
    
    button.imageView.image = [UIImage imageNamed:@"sina_gray.png"];
    
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.center.equalTo(self.view);
        
        make.size.mas_equalTo(CGSizeMake(100, 30));
    }];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
