// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.

// SubscriptionUsages is the the Azure SQL Database management API provides a RESTful set of web services that interact
// with Azure SQL Database services to manage your databases. The API enables you to create, retrieve, update, and
// delete databases.
import Foundation
import azureSwiftRuntime
extension Commands {
public struct SubscriptionUsages {
    public static func Get(locationName: String, usageName: String, subscriptionId: String) -> SubscriptionUsagesGet {
        return GetCommand(locationName: locationName, usageName: usageName, subscriptionId: subscriptionId)
    }
    public static func ListByLocation(locationName: String, subscriptionId: String) -> SubscriptionUsagesListByLocation {
        return ListByLocationCommand(locationName: locationName, subscriptionId: subscriptionId)
    }
}
}
