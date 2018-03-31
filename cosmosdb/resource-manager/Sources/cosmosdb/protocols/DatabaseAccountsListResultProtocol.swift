// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DatabaseAccountsListResultProtocol is the List operation response, that contains the database accounts and their
// properties.
public protocol DatabaseAccountsListResultProtocol : Codable {
     var value: [DatabaseAccountProtocol?]? { get set }
}
