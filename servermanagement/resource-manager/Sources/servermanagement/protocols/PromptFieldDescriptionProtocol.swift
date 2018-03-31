// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PromptFieldDescriptionProtocol is field description for the implementation of PSHostUserInterface.Prompt
public protocol PromptFieldDescriptionProtocol : Codable {
     var name: String? { get set }
     var label: String? { get set }
     var helpMessage: String? { get set }
     var promptFieldTypeIsList: Bool? { get set }
     var promptFieldType: PromptFieldTypeEnum? { get set }
}
