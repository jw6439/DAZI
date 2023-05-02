

import Foundation

/*
 This struct represent a post
 */

struct Post: Hashable, Identifiable {
    
    var id = UUID()
    
    var user: User
    var image: String = ""
    
    var city: String = ""
    
    var startDate: Date
    var endDate: Date
    
    var dateRange: String {
        return "\(formatDateToMMDDYY(date: startDate)) - \(formatDateToMMDDYY(date: endDate))"
    }
    
}


