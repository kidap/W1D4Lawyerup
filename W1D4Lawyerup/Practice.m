//
//  Practice.m
//  W1D4Lawyerup
//
//  Created by Karlo Pagtakhan on 03/10/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import "Practice.h"

@implementation Practice

-(instancetype) init{
  if( self = [super init]){
    
    _rates = [NSMutableDictionary dictionaryWithDictionary: @{@0: @200.00,
               @1: @380.50,
               @2: @405.99,
               @3: @400.00
               } ];
  }
  return self;
}


+(NSNumber *)convertLawSpecialtyToNum:(LawSpecialty)specialty{
  switch (specialty) {
    case Family:
      return [NSNumber numberWithInt:0];
      break;
    case Patent:
      return [NSNumber numberWithInt:1];
      break;
    case Criminal:
      return [NSNumber numberWithInt:2];
      break;
    case Corporate:
      return [NSNumber numberWithInt:3];
      break;
      
    default:
      break;
  }
}


@end
