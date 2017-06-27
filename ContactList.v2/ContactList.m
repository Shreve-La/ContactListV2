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
    newContact.uniqueID = self.contactList.count;
    [self.contactList addObject:newContact];
}

-(void)listContacts:(NSMutableArray *)contactList{
    for (Contact* contact in contactList) {
        NSLog(@"#%lu <%@> ", contact.uniqueID, contact.fullName);
    }
    
    }




@end
