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
    
    _rates = [NSMutableDictionary dictionaryWithDictionary: @{@"Family": @200.00,
               @"Patent": @380.50,
               @"Criminal": @405.99,
               @"Corporate": @400.00
               } ];
    
  }
  return self;
}


+(NSString *)convertLawSpecialtyToNum:(LawSpecialty)specialty{
  switch (specialty) {
    case Family:
      return @"Family";
      break;
    case Patent:
      return @"Patent";
      break;
    case Criminal:
      return @"Criminal";
      break;
    case Corporate:
      return @"Corporate";
      break;
      
    default:
      break;
  }
}


@end
