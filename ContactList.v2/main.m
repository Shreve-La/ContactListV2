//
//  main.m
//  ContactList.v2
//
//  Created by swcl on 2017-06-27.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [[InputCollector alloc] init];
        ContactList *contactList = [[ContactList alloc] init];
        BOOL running = YES;
        while (running){
        NSString *selectAction = [inputCollector inputForPrompt:@"What would you like do next? new - Create a new contact list - List all contacts quit - Exit Application >"];
        
        if ([selectAction isEqualToString:@"quit"]){
            running = NO;
        }
        if ([selectAction isEqualToString:@"new"])
        {
            NSString *fullNameInput = [inputCollector inputForPrompt:@"Enter your Fullname"];
            NSString *emailInput = [inputCollector inputForPrompt:@"Enter your email"];
            Contact *contact = [Contact new];
            contact.emailAddress = emailInput;
            contact.fullName = fullNameInput;
            [contactList addContact:contact];
        }
            
            if ([selectAction isEqualToString:@"list"])
            {
            
                [contactList listContacts:contactList.contactList];
            }
        
        
        
        
        
        
        
        
        }
        
    }
    return 0;
}
