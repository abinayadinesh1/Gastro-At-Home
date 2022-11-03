//  Created by Abinaya Dinesh on 4/6/21.
//

import SwiftUI

//full view for a card in the resource center. parses and loads information
struct DisorderView: View {
    var disorder: Disorder
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            LazyVStack(alignment: .leading){
                VStack{
                    Image("\(disorder.image)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 100, alignment: .center)
                        .padding(.leading, 10)
                    Text("\(disorder.title)")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color(.black))
                        .frame(alignment: .center)
                        .padding(.leading, 10)
                    Text("\(disorder.description)")
                        .font(.subheadline)
                        .foregroundColor(Color(.black))
                        .frame(alignment: .center)
                        .padding(.leading, 10)
                    
                }
                Spacer()
                    .frame(height:15)
                VStack (alignment: .leading){
                    Text("\(disorder.title2)")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color4"))
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    
                    Text("\(disorder.caused_by)")
                        .font(.system(size: 14))
                        .fontWeight(.regular)
                        .foregroundColor(Color(.black))
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                }
                Spacer()
                    .frame(height:15)
                VStack (alignment: .leading){
                    Text("\(disorder.title3)")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color4"))
                        .frame(alignment: .leading)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    
                    Text("\(disorder.symptoms)")
                        .font(.system(size: 14))
                        .fontWeight(.regular)
                        .foregroundColor(Color(.black))
                        .frame(alignment: .leading)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                }
                Spacer()
                    .frame(height:15)
                VStack (alignment: .leading){
                    Text("\(disorder.title4)")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color4"))
                        .frame(alignment: .leading)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    
                    
                    Text("\(disorder.home_remedies)")
                        .font(.system(size: 14))
                        .fontWeight(.regular)
                        .foregroundColor(Color(.black))
                        .frame(alignment: .leading)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                }
                Spacer()
                    .frame(height:15)
                VStack(alignment: .leading){
                    VStack (alignment: .leading){
                        Text("\(disorder.title5)")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color("Color4"))
                            .frame(alignment: .leading)
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                        
                        Text("\(disorder.check_out)")
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                            .foregroundColor(Color(.black))
                            .frame(alignment: .leading)
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                    }
                    Spacer()
                        .frame(height:15)
                    VStack(alignment: .leading){
                    Text("\(disorder.title6)")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color4"))
                        .frame(alignment: .leading)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    
                    Text("\(disorder.clinician_treatments)")
                        .font(.system(size: 12))
                        .fontWeight(.regular)
                        .foregroundColor(Color(.black))
                        .frame(alignment: .leading)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    }
                }
                
            }
            Spacer()
        }
    }
}
