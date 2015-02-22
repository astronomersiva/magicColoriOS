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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [UIView animateWithDuration:2.0 animations: ^{
        self.view.backgroundColor = [self colorGiver];
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

-(UIColor*)colorGiver{
    CGFloat green=(arc4random()%100) *.01;
    CGFloat blue=(arc4random()%100) * .01;
    CGFloat red=(arc4random()%100) *.01;
    UIColor *abc = [UIColor colorWithRed:red green:green blue:blue alpha:1];
    return abc;
}
int flag;

- (IBAction)transform:(UIButton *)sender {
    for(flag = 1; flag < 12; flag++){
        sleep(5);
        NSLog(@"%d", flag);
        self.view.backgroundColor = [self colorGiver];
        NSLog(@"%@", self.view.backgroundColor);
        if(flag == 11){
            flag = 1;
        }
        
    }
}
@end
