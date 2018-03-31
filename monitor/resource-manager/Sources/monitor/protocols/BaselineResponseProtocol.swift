// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// BaselineResponseProtocol is the response to a baseline query.
public protocol BaselineResponseProtocol : Codable {
     var id: String? { get set }
     var type: String? { get set }
     var name: LocalizableStringProtocol? { get set }
     var properties: BaselinePropertiesProtocol? { get set }
}
