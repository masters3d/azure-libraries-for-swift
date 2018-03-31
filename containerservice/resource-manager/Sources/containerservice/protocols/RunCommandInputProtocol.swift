// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RunCommandInputProtocol is capture Virtual Machine parameters.
public protocol RunCommandInputProtocol : Codable {
     var commandId: String { get set }
     var script: [String]? { get set }
     var parameters: [RunCommandInputParameterProtocol?]? { get set }
}
