// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CanonicalProfileDefinitionProtocol is definition of canonical profile.
public protocol CanonicalProfileDefinitionProtocol : Codable {
     var canonicalProfileId: Int32? { get set }
     var properties: [CanonicalProfileDefinitionPropertiesItemProtocol?]? { get set }
}
