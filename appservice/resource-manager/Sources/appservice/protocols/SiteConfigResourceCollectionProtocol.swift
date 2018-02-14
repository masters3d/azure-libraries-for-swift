// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SiteConfigResourceCollectionProtocol is collection of site configurations.
public protocol SiteConfigResourceCollectionProtocol : Codable {
     var value: [SiteConfigResourceProtocol] { get set }
     var _nextLink: String? { get set }
}
