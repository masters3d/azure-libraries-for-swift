// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
import Foundation
// ServiceSpecificationProtocol is one property of operation, include metric specifications.
public protocol ServiceSpecificationProtocol : Codable {
     var metricSpecifications: [MetricSpecificationProtocol?]? { get set }
}