// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RelationshipLinkFieldMappingProtocol is the fields mapping for Relationships.
public protocol RelationshipLinkFieldMappingProtocol : Codable {
     var interactionFieldName: String { get set }
     var linkType: LinkTypesEnum? { get set }
     var relationshipFieldName: String { get set }
}