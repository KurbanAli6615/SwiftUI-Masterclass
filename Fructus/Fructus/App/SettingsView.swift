//
//  SettingsView.swift
//  Fructus
//
//  Created by KurbanAli on 15/11/21.
//

import SwiftUI

struct SettingsView: View {
    //  MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false

    //  MARK: - Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (spacing: 20) {
                    
                    //  MARK: Section:1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        
                        HStack (alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium and colorise. None have cholesterol. Fruits are sources of many essential nutrients, icluding potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                                
                        }
                    }
                
                //  MARK: Section:2
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        Text("If you wish you can restart the application by the toggle switch in this box. That way it start the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minWidth: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("RESTARTED")
                                    .bold()
                                    .foregroundColor(.green )
                            } else {
                                Text("RESTART")
                                    .bold()
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                
                //  MARK: Section:3
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        
                        SettingsRowView(name: "Developer", content: "KurbanAli Masu")
                        
                        SettingsRowView(name: "Designer", content: "KurbanAli Masu")
                        
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        
                        SettingsRowView(name: "Website",linkLabel: "KurbanAli's PortFolio", linkDestination: "kurbanali6615.github.io/Portfolio/")
                        
                        SettingsRowView(name: "Twitter",linkLabel: "@KurbanAli_6615", linkDestination: "twitter.com/KurbanAli_6615")
                        
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        
                        SettingsRowView(name: "Version", content: "1.1.0")

                    }
            }
            .navigationBarTitle(Text("Settings"), displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
            })
            )
            .padding()
        }
    }
}
}

//  MARK: - Preview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
