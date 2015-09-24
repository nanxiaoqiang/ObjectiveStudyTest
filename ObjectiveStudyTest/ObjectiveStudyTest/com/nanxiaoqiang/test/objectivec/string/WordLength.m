//
//  WordLength.m
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/24.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WordLength.h"

@implementation WordLength

+ (void) wordsCount
{
    const char * words[4] = {"nanxiaoqiang", "NXQ", "monicc", "mncc"};
    
    for (int i = 0; i < 4; i++) {
        NSLog(@"word %s length is %ld", words[i], strlen(words[i]));
    }
}

+ (void) show
{
    [WordLength wordsCount];
}

@end
