// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// OdataErrorProtocol is active Directory OData error information.
public protocol OdataErrorProtocol : Codable {
     var code: String? { get set }
     var message: ErrorMessageProtocol? { get set }
}
