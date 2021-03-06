// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ActivityLogAlertLeafConditionProtocol is an Activity Log alert condition that is met by comparing an activity log
// field and value.
public protocol ActivityLogAlertLeafConditionProtocol : Codable {
     var field: String { get set }
     var equals: String { get set }
}
