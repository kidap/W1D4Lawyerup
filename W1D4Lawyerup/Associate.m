//
//  Associate.m
//  W1D4Lawyerup
//
//  Created by Karlo Pagtakhan on 03/10/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import "Associate.h"
#import "Client.h"

@implementation Associate

-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer *)lawyer{
  //Add the client to the lawyers's client list
  [lawyer.clientList addObject:client];
}

-(int)payableAmountForClient:(Client *)client forLawyer:(Lawyer *)lawyer{
  
  //Hours is the length of the character
  int hours = (int)[client.problem length];
  
  //Calculate rate of the lawyer
  int rate = hours * [[lawyer getRate:client.specialty] intValue];
  
  return rate;
}

@end
