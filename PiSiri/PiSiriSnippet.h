//
//  PiSiriSnippet.h
//  PiSiri
//
//  Created by Kepler Sticka-Jones on 2/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

// AssistantExtensions by Mario Hros
// See http://ae.k3a.me/

#import <AssistantExtensions/SiriObjects.h>

// this class represents one visible "snippet" (e.g. Weather, Notes, etc)
// there can be 0, 1 or more different SESnippet classes per AE Extension
// each different SESnippet class must be "registered" in *Extenion's -[initWithSystem:system]

@interface PiSiriSnippet : NSObject<SESnippet> {
    UIView* _view;
	IBOutlet UIView* _nib;
	IBOutlet UIWebView* _webView;
}

- (id)initWithProperties:(NSDictionary*)props;
- (id)view;

@end