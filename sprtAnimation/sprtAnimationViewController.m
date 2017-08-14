//
//  sprtAnimationViewController.m
//  sprtAnimation
//
//  Created by MMstudent on 10/12/14.
//  Copyright (c) 2014 sbu. All rights reserved.
//

#import "sprtAnimationViewController.h"

//@interface sprtAnimationViewController ()

//@end

@implementation sprtAnimationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.anim =
    [[NSMutableArray alloc]
     init];
    
    for(int i=0;i<6;i++){
    NSString *pic=[NSString stringWithFormat:@"img%d.png", i];
    UIImage *img=[UIImage imageNamed:pic];
    if(img)
        [_anim addObject:img];
    }
    [_walk
     setAnimationImages:_anim];
    [_walk
     setAnimationDuration:.75];
    [_walk
     startAnimating];
}

-(void)viewWillLayoutSubviews {
    [NSTimer scheduledTimerWithTimeInterval:17 target:self selector:@selector(move) userInfo:nil repeats:YES];
    [self move];
}


-(void)move {
    _walk.frame=CGRectMake(-240,140,240,180);
    
    [UIView animateWithDuration:16.5 animations:^{
        _walk.frame=CGRectMake(self.view.frame.size.width+_walk.frame.size.width,140,240,180);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
