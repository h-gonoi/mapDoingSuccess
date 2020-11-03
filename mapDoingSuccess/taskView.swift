//
//  taskView.swift
//  mapDoingSuccess
//
//  Created by 五ノ井裕輝 on 2020/11/03.
//  Copyright © 2020 Hiroki Gonoi. All rights reserved.
//

import SwiftUI

struct taskView: View {
    @State var array = [String]();
    var body: some View {
        ZStack(alignment: .bottomTrailing){
        List {
            Text("row1")
            Text("row2")
            
        }
        Button(action: {
            self.array = createArray()
        }) {
            Image(systemName: "pencil")
            .frame(width: 60, height: 60)
            .imageScale(.large)
            .background(Color.green
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: -5))
            .foregroundColor(.white)
            .clipShape(Circle())
            .offset(x: -50, y: -40)
        }
    }
    }
}

struct taskView_Previews: PreviewProvider {
    static var previews: some View {
        taskView()
    }
}
struct Production: Identifiable {
    // ユニークID
    var id: ObjectIdentifier

    // 商品名
    var name: String

    // 商品画像
    var image: Image
}
struct SimpleRow: View {
    var production: Production
    var body: some View {
        // 水平方向に並べる
        HStack {
            // 商品画像
            production.image

            // 商品名
            Text(production.name).padding(10)
        }
        .padding(30)
    }
}
func createArray()->[String] {
    return ["item1", "item2", "item3", "item4", "item5","item6"]
}
