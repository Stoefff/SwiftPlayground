//
//  ViewController.swift
//  UICollectionView
//
//  Created by Emil Atanasov on 18.11.17.
//  Copyright © 2017 SwiftFMI. All rights reserved.
//

import UIKit

private let reuseIdentifier = "EmailCell"
class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    var numberOfEmails = 30

    let emails = Email.getMockEmails(items: 30)
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //може да изпозлвате тези тестови данни
     //   collectionView?.register(EmailCell.self, forCellWithReuseIdentifier: reuseIdentifier)
      //  print(emails)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int
    {
        return numberOfEmails
    }

    func collectionView(_: UICollectionView, cellForItemAt indexPath : IndexPath) -> UICollectionViewCell
     {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! EmailCell
        
        cell.NameLabel.text = emails[indexPath.item].sender
        cell.SubjectLabel.text = emails[indexPath.item].subject
        let date = emails[indexPath.item].date
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        var neededDate = String(hour)
        neededDate.append(":")
        neededDate.append(String(minutes))
        cell.TimeLabel.text = neededDate
       // cell.TimeLabel.text = emails[indexPath.item].date.description
        cell.TextLabel.text = emails[indexPath.item].summary
        cell.TextLabel.lineBreakMode = .byWordWrapping
        cell.TextLabel.numberOfLines = 0
        //initView()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
    }
}
