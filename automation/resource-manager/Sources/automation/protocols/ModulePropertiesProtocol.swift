// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ModulePropertiesProtocol is definition of the module property type.
public protocol ModulePropertiesProtocol : Codable {
     var isGlobal: Bool? { get set }
     var version: String? { get set }
     var sizeInBytes: Int64? { get set }
     var activityCount: Int32? { get set }
     var provisioningState: ModuleProvisioningStateEnum? { get set }
     var contentLink: ContentLinkProtocol? { get set }
     var error: ModuleErrorInfoProtocol? { get set }
     var creationTime: Date? { get set }
     var lastModifiedTime: Date? { get set }
     var description: String? { get set }
}
