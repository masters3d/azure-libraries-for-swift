// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ActionProtocol is represents the filter actions which are allowed for the transformation of a message that have been
// matched by a filter expression.
public protocol ActionProtocol : Codable {
     var sqlExpression: String? { get set }
     var compatibilityLevel: Int32? { get set }
     var requiresPreprocessing: Bool? { get set }
}
