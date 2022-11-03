import SwiftUI

struct Poop: Identifiable{
    var id = UUID().uuidString
    var time: Date = Date()
    var description : String = ""
    var didPoop : Bool = false
    var ratePoop : String = ""
    var color : String = ""
    var size : String = ""
    var shape : String = ""
}


struct PoopMetaData: Identifiable{
    var id = UUID().uuidString
    var poop: [Poop]
    var poopDate: Date
}

func getSamplePoopDate(offset: Int)->Date{
    let calendar = Calendar.current
    let date = calendar.date(byAdding: .day, value: offset, to: Date())
    
    return date ?? Date()
}

var poops: [PoopMetaData] = [
    PoopMetaData(poop: [Poop(description: "I drank castor oil last nigt and did a salt flush so I flushed my stomach! Thank god", didPoop: true, ratePoop: "10", color: "brown", size: "large", shape: "snake")], poopDate: getSamplePoopDate(offset: 10)),
    PoopMetaData(poop: [Poop(description: "My stomach was really hurting this morning, and I haven't pooped for a few days. I can really feel my mental health taking a toll, too, as I was super irritable.", didPoop: true, ratePoop: "10", color: "brown", size: "large", shape: "type 2")], poopDate: getSamplePoopDate(offset: 15)),
    PoopMetaData(poop: [Poop(description: "My stomach was really hurting this morning, and I haven't pooped for a few days. I can really feel my mental health taking a toll, too, as I was super irritable.", didPoop: true, ratePoop: "10", color: "brown", size: "large", shape: "type 2")], poopDate: getSamplePoopDate(offset: 12)),

]
