

import SwiftUI

struct AddPostView: View {
    
    @State var description = ""
    
    @State var date = Date()
    
    var body: some View {
    
        VStack {
            
            HStack {
                
                ZStack {
                    Rectangle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.gray)
                        .opacity(0.8)
                    Image(systemName: "plus")
                }
                .padding(.leading)
                
                Text("Add Image")
                
                Spacer()
            }
            
            
            Divider()
            
            TextEditor(text: $description)
                .frame(maxHeight: 300)
                .border(.black, width: 1)
            
            Divider()
            
            HStack {
                Label("Add Location", systemImage: "pin")
                    .padding(.leading)
                Spacer()
            }
            
            HStack {
                
                DatePicker("Select Date", selection: $date, displayedComponents: .date)
                    .padding(.leading)
                
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Spacer()
                // Save Draft
                Button(action: {
                    
                }, label: {
                    Image(systemName: "icloud.and.arrow.down.fill")
                })
                Spacer()
                // Publish
                Button("Publish") {
                    
                }
                .buttonStyle(.borderedProminent)
                .cornerRadius(70)
                
                Spacer()
            }
            
            Spacer()
        }
        
    }
}

struct AddPostView_Previews: PreviewProvider {
    static var previews: some View {
        AddPostView()
    }
}
