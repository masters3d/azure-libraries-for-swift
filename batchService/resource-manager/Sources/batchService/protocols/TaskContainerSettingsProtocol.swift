// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// TaskContainerSettingsProtocol is
public protocol TaskContainerSettingsProtocol : Codable {
     var containerRunOptions: String? { get set }
     var imageName: String { get set }
     var registry: ContainerRegistryProtocol? { get set }
}
