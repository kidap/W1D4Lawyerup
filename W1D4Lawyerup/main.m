//
//  main.m
//  W1D4Lawyerup
//
//  Created by Karlo Pagtakhan on 03/10/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lawyer.h"
#import "Practice.h"
#import "Client.h"
#import "Associate.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    //Initialize 1 Practice object.
    Practice *pearsonSpecterLitt = [[Practice alloc] init];
    
    //Initialize 2 Lawyer objects with a practice, a name and an unique specialization
    Lawyer *harvey = [[Lawyer alloc] initWithPractice:pearsonSpecterLitt withName:@"Harvey Specter" withSpecialty:Corporate];
    Lawyer *mike = [[Lawyer alloc] initWithPractice:pearsonSpecterLitt withName:@"Mike Ross" withSpecialty:Patent];
    
    //Initialize 2 Associate objects.
    Associate *harold = [[Associate alloc] init];
    Associate *jimmy = [[Associate alloc] init];
    
    //Assign associate as delegates
    mike.delegate = harold;
    harvey.delegate = jimmy;
    
    //Initialize 2 Clients objects with a name, description of problem, and specialization required
    Client *apple = [[Client alloc] initWithName:@"Apple" withProblem:@"death" withSpecialty:Criminal];
    
    Client *samsung = [[Client alloc] initWithName:@"Samsung" withProblem:@"Patent" withSpecialty:Corporate];
    
    [harvey addClient:apple];
    [mike addClient:samsung];
    
    NSLog(@"%@ will charge %@ $%d for %@ cases.",harvey.name, apple.name, [harvey getPayableAmountForClient:apple], apple.problem);
    NSLog(@"%@ will charge %@ $%d for %@ cases.",mike.name, samsung.name, [mike getPayableAmountForClient:samsung], samsung.problem);
    
    
  }
    return 0;
}
