// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SourceControlUpdatePropertiesProtocol is the properties of the update source control
public protocol SourceControlUpdatePropertiesProtocol : Codable {
     var branch: String? { get set }
     var folderPath: String? { get set }
     var autoSync: Bool? { get set }
     var publishRunbook: Bool? { get set }
     var securityToken: String? { get set }
     var description: String? { get set }
}
