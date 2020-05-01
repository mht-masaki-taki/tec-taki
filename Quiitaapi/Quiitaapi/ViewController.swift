//
//  ViewController.swift
//  Quiitaapi
//
//  Created by ああ on 2020/05/01.
//  Copyright © 2020 taki. All rights reserved.
//

import UIKit

struct Qiita: Codable {
    let title: String
    let createdAt: String
    let user: User
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case createdAt = "created_at"
        case user = "user"
    }
}
struct User: Codable {
    let name: String
    let profileImageUrl: String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case profileImageUrl = "profile_image_url"
    }
}

class ViewController: UIViewController {
    
    private let cellId = "cellId"
    private var qiitas = [Qiita]()
    
    let tabeleView: UITableView = {
        let tv = UITableView()
            return tv
        }()
    
     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        view.addSubview(tabeleView)
        tabeleView.frame.size = view.frame.size
        
        tabeleView.delegate = self
        tabeleView.dataSource = self
        tabeleView.register(QiitaTableViewCell.self, forCellReuseIdentifier: cellId)
        navigationItem.title = "Qiitaの記事"
        
        getQiitaApi()
    }
    
    private func getQiitaApi(){
        guard let url = URL(string: "https://qiita.com/api/v2/items?page=1&per_page=10") else { return }
        
        var repuest = URLRequest(url: url)
        repuest.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: url) { (data, responds ,err) in
            if let err = err {
                print("情報の取得に失敗しました。：", err)
                return
                
            }
            if let data = data {
                do {
                    //let json = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                    let qiita = try JSONDecoder().decode([Qiita].self, from: data)
                    self.qiitas = qiita
                    DispatchQueue.main.async{
                        self.tabeleView.reloadData()
                    }
                    print("json: ", qiita)
                } catch(let err) {
                    print("情報の取得に失敗しました。：", err)
                }
                
            }
        }
        task.resume()
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return qiitas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! QiitaTableViewCell
        cell.qiita = qiitas[indexPath.row]
        return cell
    }
    
    
}

class QiitaTableViewCell: UITableViewCell {
    
    var qiita: Qiita? {
        didSet {
            bodyTextLabel.text = qiita?.title
            let url = URL(string: qiita?.user.profileImageUrl ?? "")
            do {
                let data = try Data(contentsOf: url!)
                let image = UIImage(data: data)
                userImageView.image = image
            }catch let err {
                print("Error : \(err.localizedDescription)")
            }
        }
    }
    
    let userImageView: UIImageView = {
       let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.clipsToBounds = true
        return iv
    }()
    
    let bodyTextLabel: UILabel = {
        let label = UILabel()
        label.text = "something in here"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(userImageView)
        addSubview(bodyTextLabel)
        [
            userImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            userImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            userImageView.widthAnchor.constraint(equalToConstant: 50),
            userImageView.heightAnchor.constraint(equalToConstant: 50),
            
            bodyTextLabel.leadingAnchor.constraint(equalTo: userImageView.trailingAnchor, constant: 20),
            bodyTextLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            ].forEach{ $0.isActive = true }
        
        userImageView.layer.cornerRadius = 50 / 2
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

