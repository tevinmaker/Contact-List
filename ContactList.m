//
//  ContactList.m
//  Contact List
//
//  Created by Tevin Maker on 2016-09-06.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import "ContactList.h"


@implementation ContactList

-(void)addContact:(Contact *)newContact{
    
    [self.contactArray addObject:newContact];
    
}

-(void)listContacts{
    
    for (Contact *contact in self.contactArray) {
        NSLog(@"%lu %@", (unsigned long)[self.contactArray indexOfObject:contact], contact.contactName);
    }
    
    
}


@end
