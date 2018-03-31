// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AutoscaleSettingProtocol is a setting that contains all of the configuration for the automatic scaling of a
// resource.
public protocol AutoscaleSettingProtocol : Codable {
     var profiles: [AutoscaleProfileProtocol] { get set }
     var notifications: [AutoscaleNotificationProtocol?]? { get set }
     var enabled: Bool? { get set }
     var name: String? { get set }
     var targetResourceUri: String? { get set }
}
