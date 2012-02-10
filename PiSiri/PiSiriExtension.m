//
//  PiSiriExtension.m
//  PiSiri
//
//  Created by Kepler Sticka-Jones on 2/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PiSiriExtension.h"
#import "PiSiriCommands.h"
#import "PiSiriSnippet.h"

@implementation PiSiriExtension

-(id)initWithSystem:(id<SESystem>)system
{
	if ((self = [super init]))
	{
		[system registerCommand:[PiSiriCommands class]];
		[system registerSnippet:[PiSiriSnippet class]];
	}
	return self;
}

-(NSString*)author
{
	return @"Kepler Sticka-Jones";
}

-(NSString*)name
{
	return @"PiSiri";
}

-(NSString*)description
{
	return @"Created using the iOSOpenDev Xcode template for building an Assistant Extension";
}

-(NSString*)website
{
	return @"http://www.iOSOpenDev.com";
}

-(NSString*)versionRequirement
{
	return @"1.0.1";
}

@end