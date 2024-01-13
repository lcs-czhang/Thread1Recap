import Cocoa

struct Dog {
    let breed: String
    let color: String
    var heightInMetres: Double
    var lengthInMetres: Double
    var age: Int
    var weightInKilograms: Double
    var heightInCentimetres: Double{
        return heightInMetres*100
    }
    var lengthInCentimetres: Double{
        return lengthInMetres*100
    }
    var heightToLengthRatio: Double{
        return heightInMetres/lengthInMetres
    }
    var BMI: Double{
        return weightInKilograms/lengthInMetres/lengthInMetres
    }
}
var dogInMiddle = Dog(
    breed: "GermanSheperd",
    color: "Predominantly black, some brown.",
    heightInMetres: 0.753,
    lengthInMetres: 1.506,
    age: 5,
    weightInKilograms: 22.680
)
dogInMiddle.heightInMetres
dogInMiddle.heightInCentimetres
