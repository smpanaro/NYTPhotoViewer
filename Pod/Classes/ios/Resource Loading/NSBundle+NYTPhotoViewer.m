//
//  NSBundle+NYTPhotoViewer.m
//  NYTPhotoViewer
//
//  Created by Chris Dzombak on 10/16/15.
//
//

#import "NSBundle+NYTPhotoViewer.h"
#import "NYTPhotosViewController.h"

@implementation NSBundle (NYTPhotoViewer)

+ (instancetype)nyt_photoViewerResourceBundle {
    static NSBundle *resourceBundle = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSBundle* frameworkBundle = [NSBundle bundleForClass:[NYTPhotosViewController class]]; // carthage
        NSString *resourceBundlePath = [frameworkBundle pathForResource:@"NYTPhotoViewer" ofType:@"bundle"]; // cocoapods
        resourceBundle = [self bundleWithPath:resourceBundlePath];
        resourceBundle = resourceBundle ? resourceBundle : frameworkBundle;
    });
    return resourceBundle;
}

@end
