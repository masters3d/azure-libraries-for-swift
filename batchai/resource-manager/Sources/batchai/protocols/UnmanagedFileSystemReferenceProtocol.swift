// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// UnmanagedFileSystemReferenceProtocol is details of the file system to mount on the compute cluster nodes.
public protocol UnmanagedFileSystemReferenceProtocol : Codable {
     var mountCommand: String { get set }
     var relativeMountPath: String { get set }
}
