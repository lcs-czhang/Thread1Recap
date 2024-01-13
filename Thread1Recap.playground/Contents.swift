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
dogInMiddle.heightInCentimetres
dogInMiddle.lengthInCentimetres
dogInMiddle.heightToLengthRatio
dogInMiddle.BMI

struct Book {
    let bookTitle: String
    let bookCategory: String
    let bookPriceInCanadianDollar: Double
    let numberOfCopies: Int
    let bookLengthInPages: Int
    let thickenedCover: Bool
    var bookThicknessInCentimetres: Double{
        if(thickenedCover){
            return Double(bookLengthInPages/100)+0.4
        }else{
            return Double(bookLengthInPages/100)
        }
    }
    var totalShelvesNeed: Double{
        return bookThicknessInCentimetres*Double(numberOfCopies)/50
    }
}
var macbeth = Book(
    bookTitle: "Macbeth",
    bookCategory: "Play",
    bookPriceInCanadianDollar: 12.99,
    numberOfCopies: 20,
    bookLengthInPages: 188,
    thickenedCover: false
)
macbeth.bookThicknessInCentimetres
macbeth.totalShelvesNeed
