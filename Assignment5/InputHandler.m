//
//  InputHandler.m
//  assignment3
//
//  Created by Jumpei on 2018-04-19.
//  Copyright © 2018 Jumpei. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
+ (NSString *) getUserInputWithPrompt:(NSString *) prompt {
    char inputChars[255];
    NSLog(@"%@", prompt);
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    NSCharacterSet *removeCharSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmedString = [inputString stringByTrimmingCharactersInSet: removeCharSet];
    return trimmedString;
}
@end
