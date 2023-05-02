

import Foundation

let jocelyn = User(email: "", phone: "", fistName: "Jocelyn", lastName: "Yang", aboutMe: "Currently a junior at NYU :)")
let nicolas = User(email: "", phone: "", fistName: "Nico", lastName: "Las")
let nick = User(email: "", phone: "", fistName: "Nick", lastName: "Yang")


let testUsers = [jocelyn, nicolas, nick]

let testPosts = [

    Post(user: jocelyn, image: "demoImage",city: "Alaska", startDate: Date(), endDate: Date()),
    Post(user: jocelyn, image: "demoImage",city: "Paris", startDate: Date(), endDate: Date()),
    Post(user: nicolas, image: "demoImage2",city: "New York", startDate: Date(), endDate: Date()),
    Post(user: nick, image: "demoImage2",city: "Chicago + Boston", startDate: Date(), endDate: Date()),
    Post(user: nicolas, image: "demoImage",city: "SF", startDate: Date(), endDate: Date()),
    Post(user: nick, image: "demoImage2",city: "Europe", startDate: Date(), endDate: Date()),
    Post(user: nick, image: "demoImage",city: "Miami", startDate: Date(), endDate: Date()),
    Post(user: nicolas, image: "demoImage2",city: "Florida", startDate: Date(), endDate: Date()),
    Post(user: jocelyn, image: "demoImage",city: "Seattle", startDate: Date(), endDate: Date()),
    Post(user: jocelyn, image: "demoImage2",city: "DC.", startDate: Date(), endDate: Date())

]


/*
 This is a global function, 
 Ideally this function wil be in its own file
 */

func formatDateToMMDDYY(date: Date) -> String {
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .short
    dateFormatter.timeStyle = .none
    return dateFormatter.string(from: date)
}

