//
//  NewRecipeView.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/25/22.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var name: String = ""
    @State private var image: String = ""
    @State private var price: String = ""
    @State private var description: String = ""
    
    @State private var navigateToRecipe = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Name")){
                    TextField("Recipe Name", text: $name)
                    
                }
                
                Section(header: Text("Picture")){
                    TextField("Recipe Picture", text: $image)
                    }
                
                Section(header: Text("Price")){
                    TextField("Price", text: $price)
                    }
                
                Section(header: Text("Description")){
                    TextField("Description", text: $description)
                    }
            }
            
            .navigationTitle("Your special order")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
            
            ToolbarItem {
                NavigationLink(isActive: $navigateToRecipe){
                    ProductView(product: Product.all.sorted{  $0.date > $1.date}[0])
                    navigationBarBackButtonHidden(true)
                } label: {
                    Button {
                        navigateToRecipe = true
                    } label: {
                        Label("Done", systemImage: "checkmark")
                            .labelStyle(.iconOnly)
                    }
                    
                }
                .disabled(name.isEmpty)
            }
                
        })
                
    }
        
        .navigationViewStyle(.stack)
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
            .environmentObject(ProductsViewModel())
    }
}

//extension NewRecipeView{
//    private func saveRecipe(){
//        let product = Product(name: "", image: "", price: 0, description: "", date: "")
//        productsVM.addProduct(product: product: product)
//    }
//}
