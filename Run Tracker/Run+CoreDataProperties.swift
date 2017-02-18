//
//  Run+CoreDataProperties.swift
//  Run Tracker
//
//  Created by Henry Aguinaga on 2017-02-18.
//  Copyright © 2017 Henry Aguinaga. All rights reserved.
//

import Foundation
import CoreData


extension Run {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Run> {
        return NSFetchRequest<Run>(entityName: "Run");
    }

    @NSManaged public var runname: String?
    @NSManaged public var runtime: String?
    @NSManaged public var rundistance: String?

}
