#import <Cordova/CDVPlugin.h>

@interface MSBAudioCategory : CDVPlugin

- (void)getCategory:(CDVInvokedUrlCommand*)command;
- (void)setCategory:(CDVInvokedUrlCommand*)command;

@end
