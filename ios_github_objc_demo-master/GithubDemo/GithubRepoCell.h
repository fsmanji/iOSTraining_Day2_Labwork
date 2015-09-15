//
//  GithubRepoCell.h
//  GithubDemo
//
//  Created by Cristan Zhang on 9/15/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GithubRepo.h"

@interface GithubRepoCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *repoNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ownerLabel;

@property (weak, nonatomic) IBOutlet UIImageView *startImageView;

@property (weak, nonatomic) IBOutlet UIImageView *forkImageView;
@property (weak, nonatomic) IBOutlet UILabel *startCountLabel;

@property (weak, nonatomic) IBOutlet UILabel *forkCountLabel;
@property (weak, nonatomic) IBOutlet UIImageView *repoAvatarView;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@property GithubRepo* repoObject;

-(void) updateWithRepo:(GithubRepo *)repo;

@end
