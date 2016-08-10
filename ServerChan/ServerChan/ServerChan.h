//
//  ServerChan.h
//  ServerChan
//
//  Created by Xummer on 16/8/10.
//  Copyright © 2016年 Xummer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ServerChan : NSObject

/*
 Get your SCKEY here http://sc.ftqq.com/3.version
 Call |StartWithSCKEY:| before |Say:| or |Say:message:|
 */
+ (void)StartWithSCKEY:(NSString *)key;

+ (void)Say:(NSString *)title;

+ (void)Say:(NSString *)title message:(NSString *)msg;

@end
