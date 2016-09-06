//
//  InputCollector.m
//  Contact List
//
//  Created by Tevin Maker on 2016-09-06.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector


-(NSString *)inputForPrompt:(NSString *)promptString{
    
    NSLog(@"%@", promptString);
    
    char inputChar [200];
    fgets(inputChar, 200, stdin);
    
    NSString *untrimmedString = [NSString stringWithUTF8String:inputChar];
    NSString *inputString = [untrimmedString substringToIndex:[untrimmedString length]-1];
    
    return inputString;
}


@end
