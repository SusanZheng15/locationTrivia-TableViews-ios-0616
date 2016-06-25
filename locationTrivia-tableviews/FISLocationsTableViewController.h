//
//  FISLocationsTableViewController.h
//  locationTrivia-tableviews
//
//  Created by Flatiron School on 6/25/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocation.h"
#import "FISTrivium.h"
#import "FISTriviaTableViewController.h"

@interface FISLocationsTableViewController : UITableViewController

@property (strong, nonatomic)NSArray* locations;

@end
