//
//  ViewController.m
//  ServerChan
//
//  Created by Xummer on 16/8/10.
//  Copyright © 2016年 Xummer. All rights reserved.
//

#import "ViewController.h"
#import "ServerChan.h"

@interface ViewController ()

@end

@implementation ViewController

+ (void)load {
    [ServerChan StartWithSCKEY:@"SCU******YOUR*SCKEY******"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [ServerChan Say:@"Yo!"];
    [ServerChan Say:@"Aloha~" message:@"drrr"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
