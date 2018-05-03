//
//  Question.m
//  Assinment5
//
//  Created by Jumpei on 2018-04-19.
//  Copyright © 2018 Jumpei. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype) init {
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(91) + 10;
        _rightValue = arc4random_uniform(91) + 10;
        _startTime = [NSDate date];
    }
    return self;
}

- (void) generateQuestion {
    
}

- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval) anserTime {
    NSTimeInterval interval = [ _endTime timeIntervalSinceDate:_startTime];
    
    return interval;
}
@end

