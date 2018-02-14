// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RunCommandParameterDefinitionProtocol is describes the properties of a run command parameter.
public protocol RunCommandParameterDefinitionProtocol : Codable {
     var name: String { get set }
     var type: String { get set }
     var defaultValue: String? { get set }
     var _required: Bool? { get set }
}