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
@synthesize animationTimer;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *tapHere = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(stopAnimate)];
    
    tapHere.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:tapHere];
    
    UITapGestureRecognizer *tapStart = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(startAnimate)];
    
    tapStart.numberOfTapsRequired = 2;
    [self.view addGestureRecognizer:tapStart];
    
    
    // Do any additional setup after loading the view, typically from a nib.
    animationTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                                target:self
                                                              selector:@selector(changeBackground)
                                                              userInfo:nil
                                                               repeats:YES];
    
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

-(void) changeBackground{
    
    [UIView animateWithDuration:0.8
                     animations:^{
                         self.view.backgroundColor = [self colorGiver];
                         
                     }];
}

-(void)stopAnimate{
    [animationTimer invalidate];
}

-(void)startAnimate{
    animationTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                      target:self
                                                    selector:@selector(changeBackground)
                                                    userInfo:nil
                                                     repeats:YES];
}

@end
