// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RedisCreatePropertiesProtocol is properties supplied to Create Redis operation.
public protocol RedisCreatePropertiesProtocol : RedisCommonPropertiesProtocol {
     var sku: SkuProtocol { get set }
     var subnetId: String? { get set }
     var staticIP: String? { get set }
}
