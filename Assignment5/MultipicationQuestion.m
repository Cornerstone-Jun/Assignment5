//
//  MultipicationQuestion.m
//  Assinment5
//
//  Created by Jumpei on 2018-04-19.
//  Copyright © 2018 Jumpei. All rights reserved.
//

#import "MultipicationQuestion.h"

@implementation MultipicationQuestion

- (instancetype) init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    [super setQuestion: [NSString stringWithFormat: @"%ld x %ld = ", [super leftValue], [super rightValue]]];
    [super setAnswer: ([super leftValue] * [super rightValue])];
}
@end
