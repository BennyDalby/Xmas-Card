//
//  Screen3Controller.h
//  TabCreation
//
//  Created by Benny Dalby on 12/11/12.
//  Copyright (c) 2012 com.accenture. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomScrollView.h"
#import "BIGScreenViewController.h"


@interface Screen3Controller : UIViewController<CustomScrollViewDelegate>
{
    CustomScrollView *scrollView ;
    UILabel    *label1;
    UIImageView *thumbNail ;

}
-(id)initwithscreen ;
-(void)loadScrollView ;

@end
