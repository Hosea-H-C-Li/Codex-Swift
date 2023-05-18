//
//  EnterPointList.swift
//  CODEX
//
//  Created by Hosea H C Li on 2023/5/18.
//

import SwiftUI

struct EnterPointList: View {
    var body: some View {
        NavigationView{
            List(enterPoints) { enterPoint in
                EnterPointRow(enterPoint: enterPoint)
            }
            
            .navigationTitle("CODEX")
        }
        
    }
}

struct EnterPointList_Previews: PreviewProvider {
    static var previews: some View {
        EnterPointList()
    }
}
