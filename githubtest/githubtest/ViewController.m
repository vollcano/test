//
//  ViewController.m
//  githubtest
//
//  Created by AppleBar on 15/6/18.
//  Copyright (c) 2015年 oyn. All rights reserved.
//

#import "ViewController.h"
typedef enum{
    kMovingDirUp = 10,
    kMovingDirBottom,
    kMovingDirLeft,
    kMovingDirRight,
    }kMovingDir;
#define kMovingDelta 20.0f

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *icon;




@end
@implementation ViewController
- (IBAction)move:(UIButton *)sender {
//    CGRect frame = self.icon.frame;
//    switch (sender.tag) {
//        case kMovingDirUp:
//            frame.origin.y -= kMovingDelta;
//            break;
//        case kMovingDirBottom:
//            frame.origin.y += kMovingDelta;
//            break;
//        case kMovingDirLeft:
//            frame.origin.x -= kMovingDelta;
//            break;
//        case kMovingDirRight:
//            frame.origin.x += kMovingDelta;
//            break;
//            
//        default:
//            break;
//    }
//    self.icon.frame = frame;
//    NSLog(@"%@",NSStringFromCGRect(self.icon.frame));
    CGFloat dx = 0,dy = 0;
    if (sender.tag == kMovingDirUp || sender.tag == kMovingDirBottom) {
        dy = (sender.tag == kMovingDirUp ? -kMovingDelta :kMovingDelta);
    }else{
        dx = (sender.tag == kMovingDirLeft ? -kMovingDelta :kMovingDelta);
    }

    self.icon.transform = CGAffineTransformTranslate(self.icon.transform, dx, dy);

    NSLog(@"%@",NSStringFromCGAffineTransform(self.icon.transform));
    
}

- (IBAction)zoom:(UIButton *)sender {
    CGFloat scale = sender.tag ? 1.2 :0.8;
    self.icon.transform = CGAffineTransformScale(self.icon.transform, scale, scale);
    NSLog(@"%@",NSStringFromCGAffineTransform(self.icon.transform));

    
}

- (IBAction)rotate:(UIButton *)sender {
    
    CGFloat angle =( sender.tag) ? -M_PI : M_PI;
    [UIView beginAnimations:nil context:nil];
    self.icon.transform = CGAffineTransformRotate(self.icon.transform, angle);
    [UIView commitAnimations];
    NSLog(@"%@",NSStringFromCGAffineTransform(self.icon.transform));
    NSLog(@"%@",NSStringFromCGRect(self.icon.frame));
}



@end
