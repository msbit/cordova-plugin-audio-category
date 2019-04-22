#import "MSBAudioCategory.h"
#import <AVFoundation/AVFoundation.h>

@implementation MSBAudioCategory

NSDictionary *audioCategories;

- (void)pluginInitialize {
  audioCategories = @{
    @"ambient" : AVAudioSessionCategoryAmbient,
    @"multiRoute" : AVAudioSessionCategoryMultiRoute,
    @"playAndRecord" : AVAudioSessionCategoryPlayAndRecord,
    @"playback" : AVAudioSessionCategoryPlayback,
    @"record" : AVAudioSessionCategoryRecord,
    @"soloAmbient" : AVAudioSessionCategorySoloAmbient
  };
}

- (void)getCategory:(CDVInvokedUrlCommand *)command {
  [self.commandDelegate runInBackground:^{
    NSString *enumAudioCategory = [[AVAudioSession sharedInstance] category];
    NSArray *keys = [audioCategories allKeysForObject:enumAudioCategory];
    NSString *audioCategory = [keys lastObject];
    CDVPluginResult *result =
        [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                          messageAsString:audioCategory];
    [self.commandDelegate sendPluginResult:result
                                callbackId:command.callbackId];
  }];
}

- (void)setCategory:(CDVInvokedUrlCommand *)command {
  [self.commandDelegate runInBackground:^{
    NSString *audioCategory = (NSString *)command.arguments[0];
    NSString *enumAudioCategory = [audioCategories objectForKey:audioCategory];

    CDVPluginResult *result;

    if (enumAudioCategory == nil) {
      result =
          [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR
                            messageAsString:@"Invalid AVAudioSessionCategory"];
    } else {

      NSError *error = nil;
      BOOL success =
          [[AVAudioSession sharedInstance] setCategory:enumAudioCategory
                                                 error:&error];

      if (success) {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                                   messageAsString:@"Success"];
      } else {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR
                                   messageAsString:error.description];
      }
    }

    [self.commandDelegate sendPluginResult:result
                                callbackId:command.callbackId];
  }];
}

@end
