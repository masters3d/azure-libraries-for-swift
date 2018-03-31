// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// VMwareCbtPolicyCreationInputProtocol is vMware Cbt Policy creation input.
public protocol VMwareCbtPolicyCreationInputProtocol : PolicyProviderSpecificInputProtocol {
     var recoveryPointHistory: Int32? { get set }
     var crashConsistentFrequencyInMinutes: Int32? { get set }
     var appConsistentFrequencyInMinutes: Int32? { get set }
}
