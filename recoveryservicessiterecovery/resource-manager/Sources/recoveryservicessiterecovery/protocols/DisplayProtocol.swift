// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DisplayProtocol is contains the localized display information for this particular operation / action. These value
// will be used by several clients for (1) custom role definitions for RBAC; (2) complex query filters for the event
// service; and (3) audit history / records for management operations.
public protocol DisplayProtocol : Codable {
     var provider: String? { get set }
     var resource: String? { get set }
     var operation: String? { get set }
     var description: String? { get set }
}
