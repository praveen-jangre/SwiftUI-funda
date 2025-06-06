//
//  ContentView.swift
//  NightWatch
//
//  Created by Praveen Jangre on 30/05/2025.
//

import SwiftUI



struct ContentView: View {
    @Bindable var nightWatchViewModel: NightWatchViewModel
    @State private var focusModeOn = false
    @State private var resetAlertShowing = false
    
    var body: some View {
        
        NavigationStack {
            List {
                Section {
                    ForEach($nightWatchViewModel.nightlyTasks) { task in
                        if focusModeOn == false || (focusModeOn && task.wrappedValue.isComplete == false) {
                            NavigationLink {
                                DetailView(task: task)
                            } label: {
                                TaskView(task: task.wrappedValue)
                            }
                        } else {
                            /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                        }
                    }
                    .onDelete { indexSet in
                        nightWatchViewModel.nightlyTasks.remove(atOffsets: indexSet)
                    }
                    .onMove { indices, newOffset in
                        nightWatchViewModel.nightlyTasks.move(fromOffsets: indices, toOffset: newOffset)
                    }
                } header: {
                    TaskSectionHeader(symbolSystemName:"moon.stars", headerText: "Nightly Tasks")
                }
                
                Section {
                    ForEach($nightWatchViewModel.weeklyTasks) { task in
                        if focusModeOn == false || (focusModeOn && task.wrappedValue.isComplete == false) {
                            NavigationLink {
                                DetailView(task: task)
                            } label: {
                                TaskView(task: task.wrappedValue)
                            }
                        } else {
                            /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                        }
                        
                    }
                    .onDelete { indexSet in
                        nightWatchViewModel.weeklyTasks.remove(atOffsets: indexSet)
                    }
                    .onMove { indices, newOffset in
                        nightWatchViewModel.weeklyTasks.move(fromOffsets: indices, toOffset: newOffset)
                    }
                } header: {
                    TaskSectionHeader(symbolSystemName:"sunset", headerText: "Weekly Tasks")
                    
                }
                
                Section {
                    ForEach($nightWatchViewModel.monthlyTasks) { task in
                        if focusModeOn == false || (focusModeOn && task.wrappedValue.isComplete == false) {
                            NavigationLink {
                                DetailView(task: task)
                            } label: {
                                TaskView(task: task.wrappedValue)
                            }
                        } else {
                            /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                        }
                        
                    }
                    .onDelete { indexSet in
                        nightWatchViewModel.monthlyTasks.remove(atOffsets: indexSet)
                    }
                    .onMove { indices, newOffset in
                        nightWatchViewModel.monthlyTasks.move(fromOffsets: indices, toOffset: newOffset)
                    }
                } header: {
                    TaskSectionHeader(symbolSystemName:"calendar", headerText: "Monthly Tasks")
                    
                }
                
                Section {
                    
                }
            }
            .listStyle(.grouped)
            .navigationTitle(Text("Home"))
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Toggle(isOn: $focusModeOn) {
                        Text("Focus mode")
                    }
                    .toggleStyle(.switch)
                    .frame(width: 175)
                }
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        resetAlertShowing = true
                        
                    } label: {
                        Text("Reset")
                    }
                    
                }
                
                
            }
        }
        .alert("Reset List", isPresented: $resetAlertShowing) {
            Button(role: .cancel) {
                
            } label: {
                Text("Cancel")
            }
            
            Button(role: .destructive) {
                let refreshedNightViewModel = NightWatchViewModel()
                nightWatchViewModel.nightlyTasks = refreshedNightViewModel.nightlyTasks
                nightWatchViewModel.weeklyTasks = refreshedNightViewModel.weeklyTasks
                nightWatchViewModel.monthlyTasks = refreshedNightViewModel.monthlyTasks
            } label: {
                Text("Ok, reset it")
            }
        }
        
    }
}

struct HeaderStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
            .fontWeight(.heavy)
            .foregroundStyle(Color.yellow)
            .textCase(.uppercase)
    }
}

extension View {
    func headerStyle() -> some View {
        self.modifier(HeaderStyle())
    }
}

#Preview {
    ContentView(nightWatchViewModel: NightWatchViewModel())
}

#Preview("Landscape", traits: .landscapeLeft, body: {
    ContentView(nightWatchViewModel: NightWatchViewModel())
})

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(nightWatchViewModel: NightWatchViewModel())
    }
}




