//
//  main.swift
//  BlackfishSample
//

import Foundation
import Blackfish
import Echo

let app = Blackfish()

app.get("/") { request, response in
    response.send(text: "Hello World!")
}

app.get("/welcome") { request, response in
    response.send(text: "Hello")
}

app.listen(port: 4000) { error in
    if error == nil {
        print("BlackfishSample app listening on port 4000")
    }
}
