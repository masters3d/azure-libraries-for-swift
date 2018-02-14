// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SiteProtocol is a web app, a mobile app backend, or an API app.
public protocol SiteProtocol : ResourceProtocol {
     var properties: SitePropertiesProtocol? { get set }
     var identity: ManagedServiceIdentityProtocol? { get set }
}
