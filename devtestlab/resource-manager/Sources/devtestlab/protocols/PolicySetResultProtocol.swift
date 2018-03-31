// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PolicySetResultProtocol is result of a policy set evaluation.
public protocol PolicySetResultProtocol : Codable {
     var hasError: Bool? { get set }
     var policyViolations: [PolicyViolationProtocol?]? { get set }
}
