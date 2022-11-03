import SwiftUI

//make a new entry to the calendar
struct newEntryView: View{
    @State var didPoop : Bool = false
    @State var ratePoop : String 
    @State var color : String = ""
    @State var size : String = ""
    @State var shape : String = ""
    @State var description : String = ""
    @State var time : Date = Date()
    @State private var showingAlert = false
    @State private var submitted = false
    
    @State private var colorIndex : Int = 0
    @Environment(\.presentationMode) var presentationMode
    
    var colorSelection = ["brown", "green", "red", "pale", "yellowish"]
    
    var body: some View{
        NavigationView{
            
        Form{        
            ScrollView{
                VStack{
                    HStack{
                        Text("New Entry").frame(width: .infinity, height: 20, alignment: .trailing).padding().font(.title2)
                    }
                    
                    Section(){
                        Spacer()
                        Toggle(isOn: $didPoop) {
                            Text("Did you poop?")
                        }
                        HStack{
                            Text("How satisfied are you? (x/10)").frame(width: .infinity, height: 20)
                            TextField("4", text: $ratePoop).keyboardType(.numberPad).frame(minWidth: 50, alignment: .leading)
                        }
                        HStack{
                            Text("What color was your poop?")
                            Spacer()
                            Picker("What color was your poop?", selection: $colorIndex){
                                ForEach(0 ..< colorSelection.count){
                                    Text(self.colorSelection[$0])
                                }
                            }
                        }
                        HStack{
                            Text("Size").frame(width: .infinity, height: 20)
                            TextField("Big", text: $size).multilineTextAlignment(.leading)               
                        }
                        HStack{
                            Text("Shape").frame(width: .infinity, height: 20)
                            TextField("Snake", text: $shape).multilineTextAlignment(.leading)               
                        }
                        Spacer(minLength: 10)
                        HStack{
                            Text("Description").frame(width: .infinity, height: 20)
                            TextEditor(text: $description).multilineTextAlignment(.leading)               
                        }
                        Spacer(minLength: 10)
                    }
                    
                    Button(action: {
                                showingAlert = true
                                submitted = true
                                poops.append(PoopMetaData(poop: [Poop(description: self.description)], poopDate: getSamplePoopDate(offset: 10)))
                                presentationMode.wrappedValue.dismiss()
                                
                            }, label: {
                                Text("Save").foregroundColor(.white)
                                    .padding(10)
                                    .background(Color.accentColor)
                                    .cornerRadius(8)
                                    .alert(isPresented: $showingAlert) {
                                        Alert(title: Text("Entry submitted"),
                                              message: Text("Great!"),
                                              dismissButton: .default(Text("OK")))}
                            })
                    }
                    Spacer(minLength: 20)
                    Image("poopChart").resizable().frame(width: .infinity, height: 300, alignment: .leading)
                    
                }
            }
            
        }.disabled(submitted == true)
        
    }
}
