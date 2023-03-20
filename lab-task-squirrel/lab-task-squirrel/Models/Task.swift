//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Pickup Sauvage Dior from Macys 🧴",
                 description: "Try to get one that aligns with my style. The Macy's store by our street has some great perfumes too."),
            Task(title: "Take Kingsley for a walk 🐈",
                 description: "Bring her toys to encourage her to walk, check the weather before leaving, you know she doesn't like the cold."),
            Task(title: "Cut some fresh flowers 🌺",
                 description: "If you're by the plant store, check out Riri's Ornaments, they have very lovely flowers. Their Hibiscus is so beautiful. Add some Lilies too!")
        ]
    }
}
