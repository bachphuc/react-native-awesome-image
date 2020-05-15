#import "AwesomeWebImageViewManager.h"
#import "WebImageSource.h"
#import "AwesomeWebImageView.h"

#import <React/RCTViewManager.h>

@interface AwesomeWebImageViewManager : RCTViewManager

@end

@implementation RCTConvert (WebImageSource)

+ (WebImageSource*)WebImageSource:(id)json {

    json = [self NSDictionary:json];
    return [[WebImageSource alloc] initWithURIString:json[@"uri"]];
}

@end

@implementation AwesomeWebImageViewManager

RCT_EXPORT_MODULE()

- (UIView*)view {
    AwesomeWebImageView* view = [[AwesomeWebImageView alloc] init];
    view.contentMode = UIViewContentModeScaleAspectFit;
    view.clipsToBounds = YES;
    return view;
}

RCT_CUSTOM_VIEW_PROPERTY(source, WebImageSource, AwesomeWebImageView) {
    if (json) {
        view.source = [RCTConvert WebImageSource:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(resizeMode, NSString, UIImageView) {
    if (json) {
        if ([@"cover" isEqualToString:json]) {
            view.contentMode = UIViewContentModeScaleAspectFill;
        } else if ([@"contain" isEqualToString:json]) {
            view.contentMode = UIViewContentModeScaleAspectFit;
        } else if ([@"stretch" isEqualToString:json]) {
            view.contentMode = UIViewContentModeScaleToFill;
        } else if ([@"center" isEqualToString:json]) {
            view.contentMode = UIViewContentModeCenter;
        }
    }
}

RCT_EXPORT_VIEW_PROPERTY(onWebImageError, RCTDirectEventBlock);
RCT_EXPORT_VIEW_PROPERTY(onWebImageLoad, RCTDirectEventBlock);

@end
