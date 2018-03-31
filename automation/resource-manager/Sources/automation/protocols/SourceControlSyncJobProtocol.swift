// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SourceControlSyncJobProtocol is definition of the source control sync job.
public protocol SourceControlSyncJobProtocol : Codable {
     var name: String? { get set }
     var type: String? { get set }
     var id: String? { get set }
     var properties: SourceControlSyncJobPropertiesProtocol? { get set }
}
