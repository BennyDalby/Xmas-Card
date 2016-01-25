//
//  CustomScrollView.m
//  TabCreation
//
//  Created by Benny Dalby on 12/11/12.
//  Copyright (c) 2012 com.accenture. All rights reserved.
//

#import "CustomScrollView.h"

@implementation CustomScrollView
@synthesize scrollDelegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (!self.dragging && scrollDelegate) {
        [scrollDelegate scrollViewClicked:touches withEvent:event];
    }
}

@end
