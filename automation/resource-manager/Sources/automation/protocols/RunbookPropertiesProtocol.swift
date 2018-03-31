// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RunbookPropertiesProtocol is definition of the runbook property type.
public protocol RunbookPropertiesProtocol : Codable {
     var runbookType: RunbookTypeEnumEnum? { get set }
     var publishContentLink: ContentLinkProtocol? { get set }
     var state: RunbookStateEnum? { get set }
     var logVerbose: Bool? { get set }
     var logProgress: Bool? { get set }
     var logActivityTrace: Int32? { get set }
     var jobCount: Int32? { get set }
     var parameters: [String:RunbookParameterProtocol?]? { get set }
     var outputTypes: [String]? { get set }
     var draft: RunbookDraftProtocol? { get set }
     var provisioningState: RunbookProvisioningStateEnum? { get set }
     var lastModifiedBy: String? { get set }
     var creationTime: Date? { get set }
     var lastModifiedTime: Date? { get set }
     var description: String? { get set }
}
