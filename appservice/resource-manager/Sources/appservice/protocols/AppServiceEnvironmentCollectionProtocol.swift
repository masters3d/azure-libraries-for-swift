// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// AppServiceEnvironmentCollectionProtocol is collection of App Service Environments.
public protocol AppServiceEnvironmentCollectionProtocol : Codable {
     var value: [AppServiceEnvironmentResourceProtocol] { get set }
     var _nextLink: String? { get set }
}
