//
//  ContentView.swift
//  Devote
//
//  Created by KurbanAli on 08/12/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    //  MARK: - Properties
    
    @State var task: String = ""
    @State private var showNewTaskItem: Bool = false
    
    private var isAnimating: Bool = false
    
    //  MARK: - Fetch Data
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    //  MARK: - Functions
    
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)
            
            do {
                try viewContext.save()
            } catch {
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
    
    //  MARK: - Body
    
    var body: some View {
        NavigationView {
            ZStack {
                
                //  MARK: - Main View
                VStack {
                    Spacer(minLength: 80)
                    
                    Button {
                        showNewTaskItem = true
                    } label: {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 30, weight: .semibold, design: .rounded))
                        
                        Text("New Task")
                            .font(.system(size: 24,weight: .bold, design: .rounded))
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 15)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .clipShape(
                    Capsule()
                    )
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 8, x: 0, y: 4)
                    
                    List {
                        ForEach(items) { item in
                            VStack(alignment: .leading) {
                                Text(item.task ?? "")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                
                                Text("Item at \(item.timestamp!, formatter: itemFormatter)")
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                                
                            }
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(InsetGroupedListStyle())
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 12)
                    .padding(.vertical, 0)
                .frame(maxWidth: 640)
                }
                
                if showNewTaskItem {
                    BlankView()
                        .onTapGesture {
                            withAnimation {
                                showNewTaskItem = false
                            }
                        }
                    NewTaskItemView(isShowing: $showNewTaskItem)
                }
                
            }
            
            .background(BackgroundImageView())
            .background(
                backgroundGradient
                    .ignoresSafeArea()
            )
            .onAppear() {
                UITableView.appearance().backgroundColor = UIColor.clear
            }
            
            .navigationBarTitle("Daily Tasks", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())

    }
}
//  MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

