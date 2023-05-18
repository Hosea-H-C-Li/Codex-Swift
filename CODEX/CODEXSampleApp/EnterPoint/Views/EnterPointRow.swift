//
//  EnterPointRow.swift
//  CODEX
//
//  Created by Hosea H C Li on 2023/5/18.
//

import SwiftUI

struct EnterPointRow: View {
    var enterPoint: EnterPoint
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(enterPoint.name)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                Text(enterPoint.description )
                    .font(.callout)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
            }
            
            Spacer()
            
            // TODO: Make a status view
            ZStack {
                Image(systemName: "rectangle.fill")
                    .imageScale(.large)
                .foregroundColor(enterPoint.statusColor)
                Text(enterPoint.status)
            }
            
            Spacer()
            
            Image(systemName: "chevron.forward")
                .imageScale(.large)
                .foregroundColor(.accentColor)
        }
    }
}

struct EnterPointRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EnterPointRow(enterPoint: enterPoints[0])
            EnterPointRow(enterPoint: enterPoints[1])
        }
    }
}
