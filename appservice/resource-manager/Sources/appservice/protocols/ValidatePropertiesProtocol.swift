// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ValidatePropertiesProtocol is app properties used for validation.
public protocol ValidatePropertiesProtocol : Codable {
     var serverFarmId: String? { get set }
     var skuName: String? { get set }
     var needLinuxWorkers: Bool? { get set }
     var isSpot: Bool? { get set }
     var capacity: Int32? { get set }
     var hostingEnvironment: String? { get set }
}
