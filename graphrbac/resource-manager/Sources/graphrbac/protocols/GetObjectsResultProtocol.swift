// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// GetObjectsResultProtocol is the response to an Active Directory object inquiry API request.
public protocol GetObjectsResultProtocol : Codable {
     var value: [AADObjectProtocol?]? { get set }
     var odatanextLink: String? { get set }
}