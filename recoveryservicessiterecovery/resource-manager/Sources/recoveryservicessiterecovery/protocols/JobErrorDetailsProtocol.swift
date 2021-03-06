// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// JobErrorDetailsProtocol is this class contains the error details per object.
public protocol JobErrorDetailsProtocol : Codable {
     var serviceErrorDetails: ServiceErrorProtocol? { get set }
     var providerErrorDetails: ProviderErrorProtocol? { get set }
     var errorLevel: String? { get set }
     var creationTime: Date? { get set }
     var taskId: String? { get set }
}
