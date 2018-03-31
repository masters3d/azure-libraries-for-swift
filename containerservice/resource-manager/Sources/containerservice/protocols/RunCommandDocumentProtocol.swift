// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RunCommandDocumentProtocol is describes the properties of a Run Command.
public protocol RunCommandDocumentProtocol : RunCommandDocumentBaseProtocol {
     var script: [String] { get set }
     var parameters: [RunCommandParameterDefinitionProtocol?]? { get set }
}
