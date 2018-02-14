// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PowerShellCommandResultProtocol is results from invoking a PowerShell command.
public protocol PowerShellCommandResultProtocol : Codable {
     var messageType: Int32? { get set }
     var foregroundColor: String? { get set }
     var backgroundColor: String? { get set }
     var value: String? { get set }
     var prompt: String? { get set }
     var exitCode: Int32? { get set }
     var id: Int32? { get set }
     var caption: String? { get set }
     var message: String? { get set }
     var descriptions: [PromptFieldDescriptionProtocol?]? { get set }
}