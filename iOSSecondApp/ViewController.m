//
//  ViewController.m
//  iOSSecondApp
//
//  Created by KARTHIK on 2/21/15.
//  Copyright (c) 2015 Siva. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
int flag = 1;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)transform:(UIButton *)sender {
        CGFloat green=(arc4random()%100) *.01;
        CGFloat blue=(arc4random()%100) * .01;
        CGFloat red=(arc4random()%100) *.01;
        [UIView animateWithDuration:2.0 animations: ^{
        self.view.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1];
    }];
    
}
@end
