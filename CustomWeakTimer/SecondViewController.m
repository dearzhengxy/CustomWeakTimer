//
//  SecondViewController.m
//  CustomWeakTimer
//
//  Created by MAC005 on 2019/4/17.
//  Copyright © 2019年 MAC005. All rights reserved.
//

#import "SecondViewController.h"
#import "NSTimer+weakTimer.h"

@interface SecondViewController ()
@property(nonatomic,strong) NSTimer*timer;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _timer=[NSTimer scheduledWeakTimerWithTimeInterval:1 target:self selector:@selector(dosomeThing) userInfo:nil repeats:YES];

}


-(void)dosomeThing{
    
    NSLog(@"dosomeThing");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)dealloc
{
    
}

@end
