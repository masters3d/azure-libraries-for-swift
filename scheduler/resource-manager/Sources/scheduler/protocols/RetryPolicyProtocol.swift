// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RetryPolicyProtocol is
public protocol RetryPolicyProtocol : Codable {
     var retryType: RetryTypeEnum? { get set }
     var retryInterval: String? { get set }
     var retryCount: Int32? { get set }
}
