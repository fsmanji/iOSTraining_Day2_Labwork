//
//  GithubRepoCell.m
//  GithubDemo
//
//  Created by Cristan Zhang on 9/15/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

#import "GithubRepoCell.h"
#import "UIImageView+AFNetworking.h"
#import "GithubRepo.h"


@class GithubRepo;
@implementation GithubRepoCell

- (void)awakeFromNib {
    // Initialization code
    self.descriptionLabel.preferredMaxLayoutWidth = self.descriptionLabel.frame.size.width;
    self.ownerLabel.preferredMaxLayoutWidth = self.ownerLabel.frame.size.width;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) updateWithRepo:(GithubRepo *)repo {
    self.repoObject = repo;
    if(repo) {
        self.repoNameLabel.text = repo.name;
        self.ownerLabel.text = repo.ownerHandle;
        [self.repoAvatarView setImageWithURL:[NSURL URLWithString:repo.ownerAvatarURL]];
        self.descriptionLabel.text = repo.repoDescription;
        self.startCountLabel.text = [NSString stringWithFormat:@"%li",repo.stars ];
        self.forkCountLabel.text = [NSString stringWithFormat:@"%li",repo.forks ];
    }
}

-(void)layoutSubviews {
    //set data here ?
}

@end
