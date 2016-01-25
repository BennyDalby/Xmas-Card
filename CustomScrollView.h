//
//  CustomScrollView.h
//  TabCreation
//
//  Created by Benny Dalby on 12/11/12.
//  Copyright (c) 2012 com.accenture. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomScrollViewDelegate
-(void) scrollViewClicked:(NSSet *)touches withEvent:(UIEvent *)event;

@end

@interface CustomScrollView : UIScrollView
@property (nonatomic, assign) id<CustomScrollViewDelegate> scrollDelegate;

@end
