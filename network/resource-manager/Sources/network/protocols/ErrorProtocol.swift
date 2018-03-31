// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ErrorProtocol is
public protocol ErrorProtocol : Codable {
     var code: String? { get set }
     var message: String? { get set }
     var target: String? { get set }
     var details: [ErrorDetailsProtocol?]? { get set }
     var innerError: String? { get set }
}
