// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// WebhookListResultProtocol is the response model for the list webhook operation.
public protocol WebhookListResultProtocol : Codable {
     var value: [WebhookProtocol?]? { get set }
     var _nextLink: String? { get set }
}
