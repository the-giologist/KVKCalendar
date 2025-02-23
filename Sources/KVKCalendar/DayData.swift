//
//  DayData.swift
//  KVKCalendar
//
//  Created by Sergei Kviatkovskii on 02/01/2019.
//

#if os(iOS)

import Foundation

struct DayData {
    let days: [Day]
    var date: Date
    var events: [Event] = []
    
    init(data: CalendarData, startDay: StartDayType) {
        self.date = data.date
        var tempDays = data.months.reduce([], { $0 + $1.days })
        let startIdx = tempDays.count > 7 ? tempDays.count - 7 : tempDays.count
        let endWeek = data.addEndEmptyDays(Array(tempDays[startIdx..<tempDays.count]), startDay: startDay)
        tempDays.removeSubrange(startIdx..<tempDays.count)
        self.days = data.addStartEmptyDays(tempDays, startDay: startDay) + endWeek
    }
}

#endif
