// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CloningInfoProtocol is information needed for cloning operation.
public protocol CloningInfoProtocol : Codable {
     var correlationId: String? { get set }
     var overwrite: Bool? { get set }
     var cloneCustomHostNames: Bool? { get set }
     var cloneSourceControl: Bool? { get set }
     var sourceWebAppId: String { get set }
     var hostingEnvironment: String? { get set }
     var appSettingsOverrides: [String:String]? { get set }
     var configureLoadBalancing: Bool? { get set }
     var trafficManagerProfileId: String? { get set }
     var trafficManagerProfileName: String? { get set }
     var ignoreQuotas: Bool? { get set }
}
