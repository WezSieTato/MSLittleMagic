//
//  MSReplaceNavigationSegue.m
//  MSLittleMagic
//
//  Created by Marcin Stepnowski on 03/12/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import "MSReplaceNavigationSegue.h"

@implementation MSReplaceNavigationSegue

-(void)perform {
    UIViewController *sourceViewController = (UIViewController*)[self sourceViewController];
    UIViewController *destinationController = (UIViewController*)[self destinationViewController];
    UINavigationController *navigationController = sourceViewController.navigationController;
    
    NSMutableArray *controllerStack = [NSMutableArray arrayWithArray:navigationController.viewControllers];
    [controllerStack replaceObjectAtIndex:[controllerStack indexOfObject:sourceViewController] withObject:destinationController];
    [navigationController setViewControllers:[controllerStack copy] animated:YES];
}


@end
