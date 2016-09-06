//
//  ContactList.h
//  Contact List
//
//  Created by Tevin Maker on 2016-09-06.
//  Copyright © 2016 Tevin Maker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"


@interface ContactList : NSObject

@property NSMutableArray *contactArray;


-(void)addContact:(Contact *)newContact;

-(void)listContacts;

@end
