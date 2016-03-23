//
//  ViewController.m
//  新版本新功能测试
//
//  Created by apple on 16/3/1.
//  Copyright © 2016年 cheniue. All rights reserved.
//

#import "ViewController.h"
#import "ObjectFunction.h"
#import "UIImage+ImageEffects.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.photoImageView setFrame:self.view.bounds];
    // Do any additional setup after loading the view, typically from a nib.
    [self.photoImageView setContentMode:UIViewContentModeScaleAspectFill];
    
    
//    [self.photoImageView setImage:[UIImage imageNamed:@"test.jpeg"]];

    
    //毛玻璃效果（高斯模糊）
    
//    UIVisualEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
//    UIVisualEffectView *visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
//    
//    visualEffectView.frame = self.photoImageView.bounds;
//    
//    [self.photoImageView addSubview:visualEffectView];
    
    //毛玻璃效果（高斯模糊）
//    [self.photoImageView setImage:[[UIImage imageNamed:@"test.jpeg"] applyDarkEffect]];
    
//    毛玻璃效果（高斯模糊）
//    [self.photoImageView setImage:[ObjectFunction createBlurBackground:[UIImage imageNamed:@"test.jpeg"] blurRadius:10.0f]];
    
//    毛玻璃效果（高斯模糊）
    [self.photoImageView setImage:[ObjectFunction blurryImage:[UIImage imageNamed:@"test.jpeg"] withBlurLevel:10.0f]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
