// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DscConfigurationCreateOrUpdatePropertiesProtocol is the properties to create or update configuration.
public protocol DscConfigurationCreateOrUpdatePropertiesProtocol : Codable {
     var logVerbose: Bool? { get set }
     var logProgress: Bool? { get set }
     var source: ContentSourceProtocol { get set }
     var parameters: [String:DscConfigurationParameterProtocol?]? { get set }
     var description: String? { get set }
}
