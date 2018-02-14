// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PowerShellSessionResourcesProtocol is a collection of PowerShell session resources
public protocol PowerShellSessionResourcesProtocol : Codable {
     var value: [PowerShellSessionResourceProtocol?]? { get set }
     var _nextLink: String? { get set }
}