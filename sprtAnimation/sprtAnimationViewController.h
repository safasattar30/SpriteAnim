//
//  sprtAnimationViewController.h
//  sprtAnimation
//
//  Created by MMstudent on 10/12/14.
//  Copyright (c) 2014 sbu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface sprtAnimationViewController : UIViewController{
    
}

//Properties...
@property (nonatomic, strong) IBOutlet UIImageView *walk;
@property (nonatomic, strong) NSMutableArray *anim;

// A method to move the animated object...
- (void) move;

@end
