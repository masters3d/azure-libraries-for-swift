// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// IntegrationAccountSchemaPropertiesProtocol is the integration account schema properties.
public protocol IntegrationAccountSchemaPropertiesProtocol : Codable {
     var schemaType: SchemaTypeEnum { get set }
     var targetNamespace: String? { get set }
     var documentName: String? { get set }
     var fileName: String? { get set }
     var createdTime: Date? { get set }
     var changedTime: Date? { get set }
     var metadata: [String: String?]? { get set }
     var content: String? { get set }
     var contentType: String? { get set }
     var contentLink: ContentLinkProtocol? { get set }
}
