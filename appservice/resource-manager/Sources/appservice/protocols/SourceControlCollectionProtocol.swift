// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SourceControlCollectionProtocol is collection of source controls.
public protocol SourceControlCollectionProtocol : Codable {
     var value: [SourceControlProtocol] { get set }
     var _nextLink: String? { get set }
}
