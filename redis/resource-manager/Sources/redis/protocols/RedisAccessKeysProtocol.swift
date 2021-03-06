// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RedisAccessKeysProtocol is redis cache access keys.
public protocol RedisAccessKeysProtocol : Codable {
     var primaryKey: String? { get set }
     var secondaryKey: String? { get set }
}
