// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// WebAppInstanceCollectionProtocol is collection of app instances.
public protocol WebAppInstanceCollectionProtocol : Codable {
     var value: [SiteInstanceProtocol] { get set }
     var _nextLink: String? { get set }
}
