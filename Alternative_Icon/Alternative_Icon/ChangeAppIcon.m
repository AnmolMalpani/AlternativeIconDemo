//
//  ChangeAppIcon.m
//  Alternative_Icon
//
//  Created by Anmol Maheshwari on 14/05/20.
//  Copyright © 2020 Anmol Maheshwari. All rights reserved.
//

#import "ChangeAppIcon.h"
#import "Alternative_Icon-Swift.h"

@implementation ChangeAppIcon

- (void)lc_setAlternateIconName: (NSString *)iconName
{
    //anti apple private method call analyse
    if ([[UIApplication sharedApplication] respondsToSelector:@selector(supportsAlternateIcons)] &&
        [[UIApplication sharedApplication] supportsAlternateIcons]) {
        NSMutableString *selectorString = [[NSMutableString alloc] initWithCapacity:40];
        [selectorString appendString:@"_setAlternate"];
        [selectorString appendString:@"IconName:"];
        [selectorString appendString:@"completionHandler:"];

        SEL selector = NSSelectorFromString(selectorString);
        IMP imp = [[UIApplication sharedApplication] methodForSelector:selector];
        void (*func)(id, SEL, id, id) = (void *)imp;
        if (func) {
            func([UIApplication sharedApplication], selector, iconName, ^(NSError * _Nullable error) {});
        }
    }
}

@end
