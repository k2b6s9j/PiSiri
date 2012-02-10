//
//  PiSiriCommands.m
//  PiSiri
//
//  Created by Kepler Sticka-Jones on 2/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PiSiriCommands.h"

@implementation PiSiriCommands

-(id)init
{
	if ((self = [super init]))
	{
	}
	return self;
}

-(void)dealloc
{
	[super dealloc];
}

-(BOOL)handleSpeech:(NSString*)text tokens:(NSArray*)tokens tokenSet:(NSSet*)tokenset context:(id<SEContext>)ctx
{
	// NSLog(@"PiSiriCommands handleSpeech: %@", text);
	
	// react to recognized tokens (what happen or what happened)
	if ([tokens count] >= 2 && [[tokens objectAtIndex:0] isEqualToString:@"say"] &&
		([tokenset containsObject:@"pi"] || [tokenset containsObject:@"pie"]))
	{
		// three ways to respond...
		
		//says pi
		[ctx sendAddViewsUtteranceView:@""];
		
        // end of the request
		[ctx sendRequestCompleted];
		
		return YES; // handled by extension
	}
	
	return NO;
}

@end
