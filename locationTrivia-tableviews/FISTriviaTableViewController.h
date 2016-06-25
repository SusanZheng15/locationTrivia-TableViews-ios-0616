//
//  FISTriviaTableViewController.h
//  locationTrivia-tableviews
//
//  Created by Flatiron School on 6/25/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISTrivium.h"
#import "FISLocation.h"
#import "FISLocationsTableViewController.h"

@interface FISTriviaTableViewController : UITableViewController

@property(strong, nonatomic)NSArray* trivia;

@end
