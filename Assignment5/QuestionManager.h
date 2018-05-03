//
//  QuestionManager.h
//  Assinment5
//
//  Created by Jumpei on 2018-04-19.
//  Copyright © 2018 Jumpei. All rights reserved.

//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject
@property (nonatomic, strong) NSMutableArray *questions;

- (NSString *) timeOutput;
+ (QuestionManager *) manager;
- (void) addQuestion: (Question *) question;
@end

