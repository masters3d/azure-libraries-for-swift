// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// GatewayResourcePropertiesProtocol is collection of properties.
public protocol GatewayResourcePropertiesProtocol : Codable {
     var created: Date? { get set }
     var updated: Date? { get set }
     var upgradeMode: UpgradeModeEnum? { get set }
     var desiredVersion: String? { get set }
     var instances: [GatewayStatusProtocol?]? { get set }
     var activeMessageCount: Int32? { get set }
     var latestPublishedMsiVersion: String? { get set }
     var publishedTimeUtc: Date? { get set }
     var installerDownload: String? { get set }
     var minimumVersion: String? { get set }
}
