import SwiftUI

struct NavigationViewAdvanced: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink("Navigate to ", destination: ScrollViewReaderAdvanced2())
                
            }
            
            
                .navigationTitle("Navigate to Scroll Reader")
            
        }
        
        
        
    }
}

#Preview {
    NavigationViewAdvanced()
}
