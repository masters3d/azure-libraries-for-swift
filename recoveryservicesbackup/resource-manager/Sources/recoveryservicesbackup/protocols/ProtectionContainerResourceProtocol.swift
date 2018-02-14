// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ProtectionContainerResourceProtocol is base class for container with backup items. Containers with specific
// workloads are derived from this class.
public protocol ProtectionContainerResourceProtocol : ResourceProtocol {
     var properties: ProtectionContainerProtocol? { get set }
}
