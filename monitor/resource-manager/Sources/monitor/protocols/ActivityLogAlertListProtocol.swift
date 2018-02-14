// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ActivityLogAlertListProtocol is a list of activity log alerts.
public protocol ActivityLogAlertListProtocol : Codable {
     var value: [ActivityLogAlertResourceProtocol?]? { get set }
     var _nextLink: String? { get set }
}
