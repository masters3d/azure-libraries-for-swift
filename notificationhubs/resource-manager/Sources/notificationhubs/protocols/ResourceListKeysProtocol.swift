// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ResourceListKeysProtocol is namespace/NotificationHub Connection String
public protocol ResourceListKeysProtocol : Codable {
     var primaryConnectionString: String? { get set }
     var secondaryConnectionString: String? { get set }
     var primaryKey: String? { get set }
     var secondaryKey: String? { get set }
     var keyName: String? { get set }
}
