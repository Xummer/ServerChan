//
//  ServerChan.m
//  ServerChan
//
//  Created by Xummer on 16/8/10.
//  Copyright © 2016年 Xummer. All rights reserved.
//

#import "ServerChan.h"

@implementation ServerChan

static NSString *__appKey;

+ (void)StartWithSCKEY:(NSString *)key {
    __appKey = key;
}

+ (void)Say:(NSString *)title {
    [[self class] Say:title message:nil];
}

+ (void)Say:(NSString *)title message:(NSString *)msg {
    
    if (!__appKey) {
        NSLog(@"Please set SCKEY first! Call [ServerJiang StartWithSCKEY:YOUR_SCKEY]");
        return;
    }
    
    NSString *encodedTitle = [title stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLHostAllowedCharacterSet]];
    
    NSString *URLString = [NSString stringWithFormat:@"http://sc.ftqq.com/%@.send?text=%@", __appKey, encodedTitle];
    if (msg) {
        NSString *encodedMsg = [msg stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLHostAllowedCharacterSet]];
        URLString = [URLString stringByAppendingFormat:@"&desp=%@", encodedMsg];
    }
    
    NSURL *URL = [NSURL URLWithString:URLString];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:URL];
    request.HTTPMethod = @"GET";
    
    NSURLSessionTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {}];
    
    [task resume];
}


@end
