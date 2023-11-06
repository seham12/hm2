import SwiftUI
struct Days: Identifiable {
  let id = UUID()
  let day: String
  let date: String
@State  var isClicked: Bool = false
 
}
struct Times: Identifiable{
    let id = UUID()
    let time: String
@State  var isClicked: Bool = false
}


struct DoctorDetail: View {
    
    @State var DaysArray: Array<Days> = [Days(day: "Mon", date: "21"),Days(day: "Tue", date: "22" ,isClicked:false ),Days(day: "Wed", date: "23",isClicked: true),Days(day: "Thu", date: "24",isClicked: false),Days(day: "Fri", date: "25",isClicked: false),Days(day: "Sat", date: "26",isClicked: false)]
    
    let TimesArray1: Array<Times> = [Times(time: "09:00 AM", isClicked: false),
                                     Times(time: "10:00 AM", isClicked: false),
                                     Times(time: "11:00 AM", isClicked: false)]
    let TimesArray2: Array<Times> = [Times(time: "01:00 PM", isClicked: false),
                                     Times(time: "02:00 PM", isClicked: true),
                                     Times(time: "03:00 PM", isClicked: false)]
    let TimesArray3: Array<Times> = [Times(time: "04:00 PM", isClicked: false ),
                                     Times(time: "07:00 AM", isClicked: false),
                                     Times(time: "08:00 AM", isClicked: false)]
    var body: some View {
        NavigationStack{
            HStack{
                Image(systemName: "lessthan")
                    .padding(.trailing,100)
                
                Text("Doctor Detail")
                    .padding(.trailing,100)
                    .bold()
                
                Image("three1")
            }.padding()
            ScrollView{
                VStack{
                    HStack{
                        Image("Image")
                            .resizable()
                            .frame(width: 130,height: 130)
                            .padding(.leading,8)
                        
                        VStack(alignment: .leading){
                            Text("Dr.Marcus Horizon")
                            Text("Chardiologist")
                                .font(.callout)
                                .foregroundColor(.gray)
                            
                            RoundedRectangle(cornerRadius: 5)
                                .fill(.color2)
                                .frame(width: 45,height: 25)
                                .overlay(
                                    HStack{
                                        
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.color)
                                        Text("4,7")
                                            .foregroundColor(.color)
                                        
                                    }.font(.caption)
                                )
                            
                            HStack{
                                Image(systemName: "mappin")
                                    .foregroundColor(.gray)
                                Text("800m away")
                                    .foregroundColor(.gray)
                                
                            }.font(.caption)
                            
                        }.padding(.horizontal)
                        
                        
                        Spacer()
                    }.padding()
                    HStack{
                        Text("About")
                            .bold()
                        Spacer()
                    }.padding()
                    HStack{
    Text("Lorem ipsum dolor sit amet, consectetur adipiscingelit,  do eiusmod tempor incididunt Ut enim ad minim veniam...Read more")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                     
                     
                    }.padding(.horizontal)
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 20) {
                            ForEach(DaysArray) { data in
                              DaysFunc(card: data)
                               
                            }
                        }.padding()
                    }

                    
                    
                    
                   Divider()
                        .padding(.horizontal,20)
                        .padding(.vertical)
                
                    HStack(spacing: 10) {
                        ForEach(TimesArray1) { data in
                            TimeFun(card: data)
                        }
                    }
                    HStack(spacing: 10) {
                        ForEach(TimesArray2) { data in
                            TimeFun(card: data)
                        }
                    }
                    HStack(spacing: 10) {
                        ForEach(TimesArray3) { data in
                            TimeFun(card: data)
                        }
                    }
                    
                    HStack{
                        Image(systemName: "ellipsis.message")
                            .resizable()
                            .frame(width: 30,height: 30)
                            .foregroundColor(.color)
                            .padding()
                            .background(.color2)
                            .cornerRadius(20)
                        Button(action:{
                          
                            
                        }) {
                            Text("Book Apointment")
                                .fontWeight(.regular)
                                .frame(width: 230,height: 20)
                                .font(.title3)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.color)
                                .cornerRadius(40)
                                .padding(20)
                        }
                    }
                   Spacer()
                }
            }
        }
    }
                   
                
    }



func DaysFunc(card: Days)-> some View{

    Button {
       
   } label: {
       RoundedRectangle(cornerRadius: 25.0)
           .fill(card.isClicked ? .color : .white)
           .stroke(.gray.opacity(0.2))
           .frame(width: 80,height: 100)
           .overlay(
               VStack{
                   Text(card.day)
                       .foregroundColor(card.isClicked ? .white : .gray)
                   Text(card.date)
                       .font(.title)
                       .bold()
                       .foregroundColor(card.isClicked ? .white : .black)
               }
           )
   }
}



func TimeFun(card: Times)-> some View{
   Button(action: {
       card.isClicked.toggle()
   }, label: {
       RoundedRectangle(cornerRadius: 20)
           .fill(card.isClicked ? .color : .white)
           .stroke(.color)
           .frame(width: 120,height: 50)
           .overlay(
               Text(card.time)
                   .foregroundColor(card.isClicked ? .white : .black)
           )

   })
}


        #Preview {
            DoctorDetail()
        }
