import SwiftUI

//constructs the calendar with custom date picker
struct CalendarView: View {
    @State var currentDate: Date = Date()
    @State var showSheet: Bool = false
    var body: some View {
        TabView(){
            NavigationView{
                ScrollView(showsIndicators: false){
                    VStack (spacing: 10){
                                CustomDatePicker(currentDate: $currentDate).padding(.vertical)
                            }.safeAreaInset(edge: .bottom) {}
                            }
            }.navigationBarHidden(true).tabItem{
                Text("Calendar")
            }.tag(1).font(.title3)
            newEntryView(ratePoop: "").tabItem{Text("Add new entry")}.tag(2)
            BigView().tabItem{Text("Learn more")}.tag(3)
        }
    }
}
