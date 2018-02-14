// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SearchServiceListResultProtocol is response containing a list of Azure Search services.
public protocol SearchServiceListResultProtocol : Codable {
     var value: [SearchServiceProtocol?]? { get set }
}
