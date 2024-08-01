//
//  ContentView.swift
//  Actual2
//
//  Created by DPI Student 054 on 7/25/24.
//


import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = PickerViewModelFile()
    var body: some View {
        FinalView(viewModel: viewModel)
    }
}

#Preview {
    ContentView()
}

struct FinalView: View {
    @ObservedObject var viewModel : PickerViewModelFile
    var body: some View {
        
        
        ZStack{
            Color.black
                .ignoresSafeArea()
            
            LabelledPickerSwiftUIView(label: "I'm in", data: PickerData.grade, selectedItem: $viewModel.selectedGrade)
                .offset(x:5,y:70)
            
            LabelledPickerSwiftUIView(label: "I am", data: PickerData.name, selectedItem: $viewModel.selectedName)
                .offset(x:5,y:270)
            
            Image("Image")
                .resizable()
                .scaledToFill()
                .frame(width: 500,height: 500)
                .clipShape(Circle())
                .overlay(content: {
                    Circle().stroke(.white,lineWidth: 5)
                })
                .offset(y:-350)
            
            
            VStack{
                ZStack{
                    Image("Downloads/Giraffe")//Downloads/Giraffe
                        .resizable()
                        .scaledToFit()
                    viewModel.image?
                        .resizable()
                        .scaledToFill()
                }
                .onTapGesture {
                    viewModel.isShowingPhotoToggle()
                }
            }
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(content: {
                Circle().stroke(.white.opacity(0.8), lineWidth: 3)
            })
            .offset(y:-140)
            
        }
        
        .onChange(of: viewModel.inputImage){
            viewModel.loadImage()
        }
        .sheet(isPresented: $viewModel.isShowingPhoto, content: {
            ImagePicker(image: $viewModel.inputImage)
        })
    }
    
    
    
    
}



struct MyTabsView: View { // Rename struct to avoid conflict

  var body: some View {
    TabView {
        
        NavigationStack {
            ContentView()
           
        }
        .tabItem {
            Label("Home", systemImage: "house")
        }

      //Text("Second view") // name ur contentView somethingelse and call it here, erase this loser
       // MajorView()
        SearchableProj()
       
        .tabItem {
            Label("Search", systemImage: "magnifyingglass")
        }
     
        MainView()
            .tabItem {
                Label("Game", systemImage: "gamecontroller")
            }
        //Text ("Fourth view")
        //SearchableProj()
        tracker()
            .tabItem {
                Label("tracker", systemImage: "map")
            }
    }
  }
}

struct MyTabsView_Previews: PreviewProvider {
  static var previews: some View {
    MyTabsView() // Use the defined struct name
  }
}

