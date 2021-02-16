//
//  PermissionModel.swift
//
//
//  Created by Jevon Mao on 1/30/21.
//

import Foundation
import SwiftUI
import HealthKit

/**
 The types of iOS system permission for show in the JMPermissions view
 
 Pass this as a parameter into JMPermissions View Modifier will display 3 UI elements–location, photo, and microphone.
 ```
 [.location, photo, microphone]
 ```
 */

public enum PermissionType {
    ///The `location` permission allows the device's positoin to be tracked
    case location
    ///The `locationAlways` permission provides location data even if app is in background
    case locationAlways
    ///Used to access the user's photo library
    case photo
    ///Permission allows developers to interact with the device microphone
    case microphone
    ///Permission that allows developers to interact with on-device camera
    case camera
    ///The `notification` permission allows the iOS system to receive notification from app
    case notification
    ///Permission that allows app to read & write to device calendar
    case calendar
    ///Permission that allows app to access device's bluetooth technologies
    case bluetooth
    ///A permission that allows developers to read & write to device contacts
    case contacts
    ///Permission that give app access to motion and fitness related sensor data
    case motion
    ///The `reminders` permission is needed to interact with device reminders
    case reminders
    /**
     Permission that allows app to access healthkit information
     
     - Note: Extensive Info.plist  values and configurations are required for HealthKit authorization. Please see Apple Developer [website](https://developer.apple.com/documentation/healthkit/authorizing_access_to_health_data) for details. \n
     
     For example, passing in a `Set` of `HKSampleType`:
     ```
     [.health(Set([HKObjectType.workoutType(),
                         HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
                         HKObjectType.quantityType(forIdentifier: .distanceCycling)!,
                         HKObjectType.quantityType(forIdentifier: .distanceWalkingRunning)!,
                         HKObjectType.quantityType(forIdentifier: .heartRate)!]))]
     ```
     */
    case health(toShare: Set<HKSampleType>, read: Set<HKSampleType>)
    ///Permission that allows app to use speech recognition
    case speech
    ///In order for app to track user's data across apps and websites, the tracking permission is needed
    @available(iOS 14.5, *) case tracking
}



