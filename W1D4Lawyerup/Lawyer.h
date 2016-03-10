//
//  Lawyer.h
//  W1D4Lawyerup
//
//  Created by Karlo Pagtakhan on 03/10/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"

@class Client;
@class Lawyer;

@protocol BasicLawyerStuff <NSObject>

-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer *)lawyer;
-(int)payableAmountForClient:(Client *)client forLawyer:(Lawyer *)lawyer;

@end


@interface Lawyer : NSObject

@property (nonatomic, strong) Practice *practice;
@property (nonatomic, copy) NSString *name;
@property (nonatomic) LawSpecialty specialty;
@property (nonatomic, copy) NSNumber *rate;
@property (nonatomic, strong) NSMutableSet *clientList;
@property (nonatomic, assign) id delegate;

-(instancetype)initWithPractice:(Practice*) practice
                       withName:(NSString *)name
             withSpecialty:(LawSpecialty)spec;
-(void)addClient:(Client *)client;
-(int)getPayableAmountForClient:(Client *)client;
-(NSNumber *)getRate:(LawSpecialty)specialty;
  
  
@end
