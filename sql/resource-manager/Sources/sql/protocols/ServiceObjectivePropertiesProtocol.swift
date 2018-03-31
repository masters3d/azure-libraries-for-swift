// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ServiceObjectivePropertiesProtocol is represents the properties of a database service objective.
public protocol ServiceObjectivePropertiesProtocol : Codable {
     var serviceObjectiveName: String? { get set }
     var isDefault: Bool? { get set }
     var isSystem: Bool? { get set }
     var description: String? { get set }
     var enabled: Bool? { get set }
}
