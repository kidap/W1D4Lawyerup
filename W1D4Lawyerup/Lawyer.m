//
//  Lawyer.m
//  W1D4Lawyerup
//
//  Created by Karlo Pagtakhan on 03/10/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import "Lawyer.h"
#import "Practice.h"

@implementation Lawyer

-(instancetype)initWithPractice:(Practice*) practice
                       withName:(NSString *)name
                  withSpecialty:(LawSpecialty)specialty{
  if (self = [super init]){
    _practice = practice;
    _name = name;
    _specialty = specialty;
  }
  
  return self;
}

-(void)addClient:(Client *)client{
  [self.delegate addClientToClientList:client forLawyer:self];
}

-(int)getPayableAmountForClient:(Client *)client{
  return [self.delegate payableAmountForClient:client forLawyer:self];
}

-(NSNumber *)getRate:(LawSpecialty)specialty{
  NSString *key = [Practice convertLawSpecialtyToNum:specialty];
  NSNumber *rate = self.practice.rates[key];
  
  return rate;
}

@end
