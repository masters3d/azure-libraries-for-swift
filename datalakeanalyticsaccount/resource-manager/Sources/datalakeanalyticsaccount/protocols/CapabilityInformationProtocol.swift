// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CapabilityInformationProtocol is subscription-level properties and limits for Data Lake Analytics.
public protocol CapabilityInformationProtocol : Codable {
     var subscriptionId: String? { get set }
     var state: SubscriptionStateEnum? { get set }
     var maxAccountCount: Int32? { get set }
     var accountCount: Int32? { get set }
     var migrationState: Bool? { get set }
}
