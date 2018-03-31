// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ArtifactSourcePropertiesFragmentProtocol is properties of an artifact source.
public protocol ArtifactSourcePropertiesFragmentProtocol : Codable {
     var displayName: String? { get set }
     var uri: String? { get set }
     var sourceType: SourceControlTypeEnum? { get set }
     var folderPath: String? { get set }
     var armTemplateFolderPath: String? { get set }
     var branchRef: String? { get set }
     var securityToken: String? { get set }
     var status: EnableStatusEnum? { get set }
     var provisioningState: String? { get set }
     var uniqueIdentifier: String? { get set }
}
