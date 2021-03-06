// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RelationshipTypeFieldMappingProtocol is map a field of profile to its corresponding StrongId in Related Profile.
public protocol RelationshipTypeFieldMappingProtocol : Codable {
     var profileFieldName: String { get set }
     var relatedProfileKeyProperty: String { get set }
}
