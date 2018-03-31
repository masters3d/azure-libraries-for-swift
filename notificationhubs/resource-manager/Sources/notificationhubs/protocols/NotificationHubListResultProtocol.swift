// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// NotificationHubListResultProtocol is the response of the List NotificationHub operation.
public protocol NotificationHubListResultProtocol : Codable {
     var value: [NotificationHubResourceProtocol?]? { get set }
     var _nextLink: String? { get set }
}
