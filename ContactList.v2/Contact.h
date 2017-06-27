//
//  Contact.h
//  ContactList.v2
//
//  Created by swcl on 2017-06-27.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (strong, nonatomic) NSString *emailAddress;
@property (strong, nonatomic) NSString *fullName;
@property (assign) NSUInteger uniqueID;


@end
