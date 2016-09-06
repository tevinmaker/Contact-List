//
//  main.m
//  Contact List
//
//  Created by Tevin Maker on 2016-09-06.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char run = 'y';
        
        ContactList *contactList1 = [[ContactList alloc] init];
        contactList1.contactArray = [[NSMutableArray alloc] init];
        
        
        while (run == 'y') {
        
        InputCollector *menu = [[InputCollector alloc] init];
        
        NSString *menuInput = [menu inputForPrompt: @"What would you like do next?\n new - Create a new contact list - List all contacts quit - Exit Application"];
        
        if ([menuInput isEqual:@"quit"]) {
            run = 'n';
        }
        
            NSString *contactNameInput;
            InputCollector *contactName = [[InputCollector alloc] init];
            NSString *emailInput;
            InputCollector *email = [[InputCollector alloc] init];
            
            
        if ([menuInput isEqual:@"new"]) {
            
            
            contactNameInput = [contactName inputForPrompt:@"Enter full name"];
            emailInput = [email inputForPrompt:@"Enter email"];
            
            Contact *contact1 = [[Contact alloc] init];
            
            contact1.contactName = contactNameInput;
            contact1.contactEmail = emailInput;
            
            
            [contactList1 addContact:contact1];
            
            }
            
            if ([menuInput isEqual:@"list"]) {
                
                [contactList1 listContacts];
            }
        
        }
        
    }
    return 0;
}
