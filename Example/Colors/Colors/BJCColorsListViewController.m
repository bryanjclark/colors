//
//  BJCColorsListViewController.m
//  Colors
//
//  Created by Bryan Clark on 1/6/14.
//  Copyright (c) 2014 bryanjclark. All rights reserved.
//

#import "BJCColorsListViewController.h"
#import "UIColor+clrs.h"

static NSString *CellIdentifier = @"Cell";

@interface BJCColorsListViewController ()
@property NSArray *colorNames;
-(void)info;

@end

@implementation BJCColorsListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    

    
    _colorNames = @[@"clrs_navyColor",
                    @"clrs_blueColor",
                    @"clrs_aquaColor",
                    @"clrs_tealColor",
                    @"clrs_oliveColor",
                    @"clrs_greenColor",
                    @"clrs_limeColor",
                    @"clrs_yellowColor",
                    @"clrs_orangeColor",
                    @"clrs_redColor",
                    @"clrs_fuchsiaColor", 
                    @"clrs_purpleColor", 
                    @"clrs_maroonColor", 
                    @"clrs_whiteColor", 
                    @"clrs_silverColor", 
                    @"clrs_grayColor", 
                    @"clrs_blackColor"];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellIdentifier];
    self.tableView.separatorColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clrs_silverColor];
    
    self.navigationItem.title = @"Colors";
    
    UIBarButtonItem *infoButton = [[UIBarButtonItem alloc] initWithTitle:@"About" style:UIBarButtonItemStylePlain target:self action:@selector(info)];
    self.navigationItem.rightBarButtonItem = infoButton;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)info
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://clrs.cc"]];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _colorNames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    NSString *colorName = _colorNames[indexPath.row];
    cell.textLabel.text = colorName;
    if (([colorName isEqualToString:@"clrs_navyColor"]) || ([colorName isEqualToString:@"clrs_blackColor"])) {
        cell.textLabel.textColor = [UIColor clrs_whiteColor];
    } else {
        cell.textLabel.textColor = [UIColor clrs_blackColor];
    }
    
    SEL selector = NSSelectorFromString(colorName);
    @try {
        // Try something
        cell.backgroundColor = [[UIColor class] performSelector:selector];
    }
    @catch (NSException * e) {
        NSLog(@"Exception: %@", e);
    }
    @finally {
        // Added to show finally works as well
    }

    
    return cell;
}

-(BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
}

@end
