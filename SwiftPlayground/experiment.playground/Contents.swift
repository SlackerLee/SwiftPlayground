import UIKit

var swiftUIDev: Set = ["Sean", "James"]
var swiftDevs: Set = ["Sean", "James", "Olivis","Maya","Leo"]
var kolintDevs: Set = ["Olivis","Elijan","Leo","Mays","Dan"]
var experiencedDevs: Set = ["Sean", "Ava", "Olivis","Leo"]

// Intersect - pull out overlap
let experiencedSwiftUIDev = swiftUIDev.intersection(experiencedDevs)

// Substract - pull out difference
let jrSwiftDev = swiftDevs.subtracting(experiencedDevs)

// Disjoint - check for overlap
swiftUIDev.isDisjoint(with: swiftDevs)

// Union - combine
swiftUIDev.union(swiftDevs)

// Exclusive - only in 1 set
let specialList = swiftDevs.symmetricDifference(kolintDevs)

// Subset
swiftDevs.isSubset(of: swiftUIDev)

// Superset
swiftDevs.isSuperset(of: swiftUIDev)

// Insert, Delete, Find
swiftDevs.insert("Ava")
swiftDevs.remove("Ava")
swiftDevs.contains("Ava")
