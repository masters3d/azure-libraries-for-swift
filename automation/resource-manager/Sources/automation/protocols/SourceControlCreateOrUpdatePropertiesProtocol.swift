// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SourceControlCreateOrUpdatePropertiesProtocol is the properties of the create source control operation.
public protocol SourceControlCreateOrUpdatePropertiesProtocol : Codable {
     var repoUrl: String? { get set }
     var branch: String? { get set }
     var folderPath: String? { get set }
     var autoSync: Bool? { get set }
     var publishRunbook: Bool? { get set }
     var sourceType: SourceTypeEnum? { get set }
     var securityToken: String? { get set }
     var description: String? { get set }
}
