//
//  QuestionManager.m
//  Assinment5
//
//  Created by Jumpei on 2018-04-19.
//  Copyright © 2018 Jumpei. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array]; // [[NSMutaabbleArray alloc] init]
    }
    return self;
}

+ (QuestionManager *) manager {
    return [[QuestionManager alloc] init];
}

- (void) addQuestion: (Question *) question {
    [_questions addObject: question];
}

- (NSString *) timeOutput {
    Question *lastQ = [_questions lastObject];
    Question *firstQ = [_questions firstObject];
    NSTimeInterval total = [lastQ.endTime timeIntervalSinceDate:firstQ.startTime];
    
    NSUInteger numQ = [_questions count];
    return [NSString stringWithFormat: @"total time: %.2fs, avarage time: %.2fs", total, total / numQ];
    
}
@end
