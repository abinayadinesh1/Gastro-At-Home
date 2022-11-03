import SwiftUI

//home screen
struct LaunchView: View{
    @State var email : String
    @State var password : String
    
    var body: some View{
        VStack{
        NavigationView{
    VStack(alignment: .center, spacing: 20){
        Image("Logo")
        TextField("Email", text: $email).frame(width: 150, height: 30, alignment: .leading)
        SecureField("Password", text: $password).onSubmit {
            guard email.isEmpty == false && password.isEmpty == false else { return }
            print("Welcome \(email)")
            NavigationLink(destination: CalendarView()) {
                Text("continue").font(.system(size: 20, weight: .semibold, design: .serif))
            }
        }.frame(width: 150, height: 30, alignment: .center)
        NavigationLink(destination: CalendarView()) {
            Text("continue").font(.system(size: 20, weight: .semibold, design: .serif)).padding(.bottom,60)
        }
    }
        }
}
    }
}
