// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ServicePrincipalProtocol is active Directory service principal information.
public protocol ServicePrincipalProtocol : DirectoryObjectProtocol {
     var displayName: String? { get set }
     var appId: String? { get set }
     var servicePrincipalNames: [String]? { get set }
}
