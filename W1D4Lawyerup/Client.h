//
//  Client.h
//  W1D4Lawyerup
//
//  Created by Karlo Pagtakhan on 03/10/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"

@interface Client : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *problem;
@property (nonatomic) LawSpecialty specialty;

-(instancetype) initWithName:(NSString *)name
                 withProblem:(NSString *)problem
               withSpecialty:(LawSpecialty)specialty;

@end
