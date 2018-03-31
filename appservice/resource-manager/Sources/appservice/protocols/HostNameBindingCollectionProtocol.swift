// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// HostNameBindingCollectionProtocol is collection of hostname bindings.
public protocol HostNameBindingCollectionProtocol : Codable {
     var value: [HostNameBindingProtocol] { get set }
     var _nextLink: String? { get set }
}
