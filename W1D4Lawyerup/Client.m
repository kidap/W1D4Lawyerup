//
//  Client.m
//  W1D4Lawyerup
//
//  Created by Karlo Pagtakhan on 03/10/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import "Client.h"

@implementation Client

-(instancetype) initWithName:(NSString *)name
                 withProblem:(NSString *)problem
               withSpecialty:(LawSpecialty)specialty{
  if (self = [super init]) {
    _name = name;
    _problem = problem;
    _specialty = specialty;
  }
  return self;
}
@end
