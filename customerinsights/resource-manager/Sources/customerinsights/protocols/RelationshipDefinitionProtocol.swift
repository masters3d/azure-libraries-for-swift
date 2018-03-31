// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RelationshipDefinitionProtocol is the definition of Relationship.
public protocol RelationshipDefinitionProtocol : Codable {
     var cardinality: CardinalityTypesEnum? { get set }
     var displayName: [String:String]? { get set }
     var description: [String:String]? { get set }
     var expiryDateTimeUtc: Date? { get set }
     var fields: [PropertyDefinitionProtocol?]? { get set }
     var lookupMappings: [RelationshipTypeMappingProtocol?]? { get set }
     var profileType: String { get set }
     var provisioningState: ProvisioningStatesEnum? { get set }
     var relationshipName: String? { get set }
     var relatedProfileType: String { get set }
     var relationshipGuidId: String? { get set }
     var tenantId: String? { get set }
}
