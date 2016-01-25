//
//  ViewController.m
//  HelloWorld
//
//  Created by Benny Dalby on 11/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


-(id)init
{
    self = [super init];
    if(self)
    {
        NSLog(@"init called");
        self.view.backgroundColor = [UIColor whiteColor];
        [self loadsanta];
        [self clickhere ];
        [self loadMyImage ] ;
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


-(void)clickhere
{

   UIImage *tempImage = [UIImage imageNamed:@"PBBlue.png"];
    
    click=[[UIImageView alloc]initWithImage:tempImage];
    
       click.userInteractionEnabled=true ;

    click.center=CGPointMake(150,200 )  ;
    
    [self.view addSubview:click];

}


-(void)loadsanta
{
    UIImage *tempImage = [UIImage imageNamed:@"xmas2.jpg"];
    santa=[[UIImageView alloc]initWithImage:tempImage];
    santa.userInteractionEnabled=true ;
    santa.backgroundColor=[UIColor clearColor] ;
    
    santa.center=CGPointMake(150,90 )  ;
    
[self.view addSubview:santa];



}



- (void)loadMyImage
{
//    UIImage *tempImage = [UIImage imageNamed:@"1.png"];
//    myImg1 = [[UIImageView alloc] initWithImage:tempImage];
//    myImg1.center = CGPointMake(100,300);
//    myImg1.highlighted = true;
//    [self.view addSubview:myImg1];
    
    NSArray *arrFrames = [NSArray arrayWithObjects:[UIImage imageNamed:@"1.png"],
                                [UIImage imageNamed:@"2.png"],
                                [UIImage imageNamed:@"3.png"],
                                [UIImage imageNamed:@"4.png"],
                                [UIImage imageNamed:@"5.png"],nil];
    
    myImg2 = [[UIImageView alloc] initWithImage: [arrFrames objectAtIndex:0]];
    myImg2.center = CGPointMake(150,300);
    myImg2.userInteractionEnabled=true ;
    [self.view addSubview:myImg2];
    myImg2.animationImages = arrFrames;
    myImg2.animationDuration = 0.5;
    [myImg2 startAnimating];
}

-(void)important_method
{
    NSLog(@"important it is")  ;
    
    AnimatedViewController *screen3=[[AnimatedViewController alloc]initwithscreen];
    
    [self.navigationController pushViewController:screen3 animated:YES];

    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];




}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{

    
    UITouch *touch=[touches anyObject];
    
     if(touch.view==click)
     {
    
       //  [santa removeFromSuperview];
       //  [click removeFromSuperview];
       //  [myImg2 removeFromSuperview ];
      
         [self important_method] ;
         
     
     
     
     }




}

@end
