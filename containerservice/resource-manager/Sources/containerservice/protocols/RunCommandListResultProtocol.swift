// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RunCommandListResultProtocol is the List Virtual Machine operation response.
public protocol RunCommandListResultProtocol : Codable {
     var value: [RunCommandDocumentBaseProtocol] { get set }
     var _nextLink: String? { get set }
}
