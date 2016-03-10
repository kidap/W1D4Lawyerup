//
//  Practice.h
//  W1D4Lawyerup
//
//  Created by Karlo Pagtakhan on 03/10/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
  Family, 
  Patent,
  Criminal,
  Corporate
} LawSpecialty;


@interface Practice : NSObject

@property (nonatomic,strong) NSMutableSet *lawyerPool;
@property (nonatomic,strong) NSMutableDictionary *rates;

-(instancetype) init;

+(NSNumber *)convertLawSpecialtyToNum:(LawSpecialty)specialty;
@end
