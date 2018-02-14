// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ArtifactPropertiesProtocol is properties of an artifact.
public protocol ArtifactPropertiesProtocol : Codable {
     var title: String? { get set }
     var description: String? { get set }
     var publisher: String? { get set }
     var filePath: String? { get set }
     var icon: String? { get set }
     var targetOsType: String? { get set }
     var parameters: [String: String?]? { get set }
     var createdDate: Date? { get set }
}
