# How to use
## Get a SCKEY
Get a SCKEY from http://sc.ftqq.com/3.version

## Setup SCKEY and play

```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [ServerChan StartWithSCKEY:@"SCU******YOUR*SCKEY******"];
    return YES;
}
```

Then let 「ServerChan」 say anything you want. But pls do not forget `#import "ServerChan.h"`

```
[ServerChan Say:@"Yo!"];

[ServerChan Say:@"Aloha~" message:@"drrr"];
```

## iOS 9/10
Add this in your info.plist
![](http://ww4.sinaimg.cn/large/006tNbRwgw1f6omyprtdij30qy026jrx.jpg)


