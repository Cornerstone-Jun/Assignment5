//
//  QuestionFactory.h
//  Assinment5
//
////  Created by Jumpei on 2018-04-19.
//  Copyright © 2018 Jumpei. All rights reserved.

//

#import <Foundation/Foundation.h>
@class Question;
@interface QuestionFactory : NSObject
@property (nonatomic, strong) NSArray *questionTypes;
- (Question *) generateRandomQuestion;
@end
