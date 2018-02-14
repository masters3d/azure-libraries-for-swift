// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// LabResourceCostPropertiesProtocol is the properties of a resource cost item.
public protocol LabResourceCostPropertiesProtocol : Codable {
     var resourcename: String? { get set }
     var resourceUId: String? { get set }
     var resourceCost: Double? { get set }
     var resourceType: String? { get set }
     var resourceOwner: String? { get set }
     var resourcePricingTier: String? { get set }
     var resourceStatus: String? { get set }
     var resourceId: String? { get set }
     var externalResourceId: String? { get set }
}
