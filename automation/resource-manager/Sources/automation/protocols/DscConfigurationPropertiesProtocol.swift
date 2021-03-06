// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DscConfigurationPropertiesProtocol is definition of the configuration property type.
public protocol DscConfigurationPropertiesProtocol : Codable {
     var provisioningState: DscConfigurationProvisioningStateEnum? { get set }
     var jobCount: Int32? { get set }
     var parameters: [String:DscConfigurationParameterProtocol?]? { get set }
     var source: ContentSourceProtocol? { get set }
     var state: DscConfigurationStateEnum? { get set }
     var logVerbose: Bool? { get set }
     var creationTime: Date? { get set }
     var lastModifiedTime: Date? { get set }
     var description: String? { get set }
}
