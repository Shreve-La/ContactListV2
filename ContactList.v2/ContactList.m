//
//  ContactList.m
//  ContactList.v2
//
//  Created by swcl on 2017-06-27.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

-(NSMutableArray*)contactList{
    if(!_contactList){
        _contactList = [[NSMutableArray alloc] init];}
        return _contactList;
}

-(void)addContact:(Contact *)newContact{
    [self.contactList addObject:newContact];

}

@end
