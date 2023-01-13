//
//  main.swift
//  swift-hello-world
//
//  Created by Turner Naef on 1/12/23.
//
//  Using this site to learn some swift https://www.airpair.com/swift/complete-guide-to-swift#:~:text=Open%20a%20new%20Swift%20project%3A%201%20Launch%20Xcode,%22Language%22%20field%205%20Run%20your%20newly%20created%20project

import Foundation

print("Hello, World!")

print("This is to be sent to github from xcode!")

var optionalString: String? = "Temp"
optionalString = "Optional Strings are cool"
print(optionalString)

class Animal
{
   // Properties are declared like variables, but only exist within the class' context
   var name = "Unknown Species"
   var sound = "Silence"

   // This is a basic initializer
   init(name: String, sound: String)
   {
      self.name = name
      self.sound = sound
   }

   func makeSound() -> String
   {
      return sound
   }
}

var animal = Animal(name: "Dog", sound: "Bark")

print(animal.makeSound())

// This is how you define a subclass
class Dog : Animal
{
   var breed = "Unknown"
   let crySound: String = "Cry"

   // Properties can also have getters and setters
   var isCrying: Bool
   {
      get
      {
         // Notice that you can compare strings' content using ==
         return sound == crySound
      }
      set
      {
         // The value received for the property is accessed using 'newValue'
         if newValue == true
         {
            sound = crySound
         }
      }
   }

   init(breed: String)
   {
      self.breed = breed
       super.init(name: "Dog", sound: "Bark")
   }

   func goFetch()
   {
      print("Fetch!")
   }

   // Use 'override' for methods that are also defined in the superclass
   override func makeSound() -> String
   {
      return "Bark"
   }
}
