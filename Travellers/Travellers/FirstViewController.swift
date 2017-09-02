//
//  FirstViewController.swift
//  Travellers
//
//  Created by Legolas.Invoker on 2017/2/8.
//  Copyright © 2017年 Chang.Jing. All rights reserved.
//

import UIKit
import AVFoundation
class FirstViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,UICollectionViewDelegate,UISearchBarDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var leftButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    let headLines = ["夏日冰城，八月的哈尔滨你好！","敬畏生命 感受浩瀚——不可思议的南极", "春日游北京，赏花是第一要事！","北京旅游不来牛街？别再说自己是吃货了。 ","北京观复博物馆，一家精致有情调的私人博物馆"," 迟到的十年 我与北大相见恨晚 "," 北京十大最美银杏观赏地，最后一个你一定不知道！"]
    let users = ["Ann可","会飞的珂珂","会飞的珂珂","一条街的布景","LegolasR","我是吃货","走遍天下"]
    let counts = [12453,4356,3435,6754,5426,3463,5536]
    let dates = ["8-21","7-21","5-28","3-24","4-18","5-18","5-02"]
    let bodys = ["“啊！你要去哈尔滨啊，哈尔滨没啥可玩的！”    “夏天去哈尔滨干嘛去！要去冬天去啊！”    “哈尔滨夏天凉快啊！”    朋友们听说我要去哈尔滨的反应，总之,貌似,好像是不推荐，更多的人选择冬天去看雪雕，看冰灯，溜冰，感受哈尔滨别样的冬天，更多的游记也是冬天去玩的，但，哈尔滨的夏天也很有感觉的哦！而且，也许冬天的时候我还去看看她呢。","在南极那些顽强、神秘而乐观的生物中，给我印象最深的是：       世界上最有喜剧天赋的演员--企鹅 婉约纯洁的天使--海豹        能够带来幸运的神秘巨型生物--鲸鱼        它们简单的快乐、始终如一的微笑和默默无闻的低调......让我开怀的同时也让我对它们肃然起敬，因为亲身经历了南极恶略的自然环境后，见识到它们在这样极端的环境中，依旧心态平和，从不规避，也从不抱怨，以它们娇小的身躯对抗着大自然，适应着大自然。 我心里由衷的佩服。","民间农谚有云“春分后，清明前，满山杏花开不完。”三、四月正是观赏杏花的最好时期。享有“京西小黄山”美誉的北京凤凰岭内，有一座杏花村种有近千亩的杏花树，成片的杏花在春天盛开。从含苞待放时的艳红，到花瓣慢慢展开时颜色转淡，最后至花谢时的一片雪白，杏花在不同时期的颜色变化令人着迷。正如古诗有云“道白非真白，言红不若红，请君红白外，别眼看天工。” 凤凰岭每年都会举办杏花节，游客可徜徉在花海中感受春天的气息，还可以品尝山茶、吃山野菜。","牛街位于北京西城区，北起广安门内大街，南至南横街，是回族的聚居地。第一次听到牛街的小伙伴，对于这个名字的来历都很好奇。据说这里曾是石榴园，就被称为榴街。后来因为当地居住的回民做的牛肉美味，再加上牛、榴两字发音相似，便改称为牛街了。 如今牛街上拥有好多清真餐厅、小吃店、超市等，游客来此能品尝到地道的北京清真美食。牛街的建筑也颇有特色，颜色多为穆斯林喜爱的绿色，漫步其中，可以体验到满满的民族风情。到访贴士：1、位于牛街东侧，有一座牛街礼拜寺，是北京规模最大、历史最久的一座清真寺，游客可来此参观。2、回族的三大节——开斋节、古尔邦节和圣纪节期间，来牛街可感受回族的节日氛围。喜爱清真食品的游客绝对要来此品尝一下了。","观复博物馆是新中国第一家私立博物馆，于1996年10月30日获政府批准成立，著名文物收藏家、鉴定家马未都先生为创办人。该馆设有:瓷器馆、家具馆、油画馆、工艺馆、影像馆、门窗馆和多功能厅。展览侧重开放形式，强调人与历史的沟通，突出传统文化的亲和力。观复博物馆在浙江杭州、福建厦门设有地方馆。","翻开一组旧照片，去年此时，我第一次不是转站经过而是专门去北京游玩，其间花了大半天的时间在北大校园，长坐于未明湖畔，竟然久久不愿离去，我想，用大美来形容一点也不为过，这里浓厚的学术氛围，这里聚集的帝都精华之气，一天就已经让我感慨良多，这所国内第一学府真真是名府其实。","钓鱼台银杏林大道位于西城区三里河路钓鱼台国宾馆东墙外，现在已成为北京观赏银杏的一个地标，是京城人赏秋，思秋，怀秋，恋秋玩耍的好去处。北京地区的银杏种植历史比较久远，以钓鱼台银杏大道最美最有名。每到秋冬交替的好时节，大大小小的银杏树满树金黄将这条街装点得素气大方，树下的芳草地被厚厚的金色的银杏树叶覆盖，踩起来“沙沙”作响。笔直的银杏大道里面是满满的人流，欣赏杏叶的老人孩子，拍婚纱照的浪漫情侣，举着长枪短炮的“拍客”，支起画板的“画家”，都是林中一景。"]
    let urls = ["https://m.amap.com/search/view/adcode=110000&longitude=116.309692&latitude=40.08925&user_loc=116.309692%2C40.08925&city=北京市&cityCode=110000&location=北京市昌平区北农路2号&keywords=美食&type=nearby","https://www.mafengwo.cn/i/7446545.html", "http://www.lvmama.com/trip/show/275545","http://www.lvmama.com/trip/show/274845","http://www.lvmama.com/trip/show/261376","http://www.mafengwo.cn/i/3307377.html","http://www.lvmama.com/trip/show/114387"]
    let images = [LRAsset.new1.image,LRAsset.new2.image,LRAsset.p1.image,LRAsset.p2.image,LRAsset.p3.image,LRAsset.p4.image,LRAsset.p5.image]
    override func awakeFromNib() {
        self.tabBarItem.title = "test"
    }
    override func viewWillAppear(_ animated: Bool) {
        for subView in searchBar.subviews  {
            for subsubView in subView.subviews  {
                subsubView.layer.borderColor = UIColor.myBlue.cgColor
                subsubView.layer.borderWidth = 100
                if let textField = subsubView as? UITextField {
                    textField.layer.borderWidth = 0
                }
            }
        }
        searchBar.barTintColor = self.navigationController?.navigationBar.barTintColor
        leftButton.tintColor = UIColor.white
        searchBar.placeholder = "输入商户名，地点"

        
    }
    func resign(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        leftButton.titleLabel!.text = "南京"
        searchBar.delegate = self
        
        //        self.navigationController?.navigationBar.barTintColor = UIColor.red
        // Do any additional setup after loading the view.
        
        let tap = UIGestureRecognizer(target: self, action: #selector(resign(_:)))
        view.addGestureRecognizer(tap)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        default:
            return urls.count
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 150
        case 1:
            return 150
        default:
            return 180
        }
    }
    

    @IBAction func pop(_ sender: UIButton) {
        print("test")
        let popVC =  CitySelectorViewController()
        self.addChildViewController(popVC)
//        popVC.view.frame.size = self.view.frame.size
        self.navigationController?.pushViewController(popVC, animated: true)
        let x = popVC.callBack()
        print(x)
        leftButton.titleLabel?.text = "南京"
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        performSegue(withIdentifier: "MapVC", sender: self)
    }
    @IBAction func test(_ sender: UIButton) {
//        self.searchBar.resignFirstResponder()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //func for setting collection
        func setCollectionViewLayout(collection: UICollectionView) -> UICollectionViewLayout {
            let layout = UICollectionViewFlowLayout()
            layout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: collection.frame.height)
            layout.scrollDirection = UICollectionViewScrollDirection.horizontal
            layout.minimumLineSpacing = 0
            layout.minimumInteritemSpacing = 0
//            layout.estimatedItemSize = CGSize(self.tableView.frame.width,70)
            layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            return layout
        }
        
        switch indexPath.section {
        case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as? TableVCell1 {
                print(cell.frame.size.height)
                let collection = cell.collection!
                collection.delegate = self
                collection.dataSource = self
                collection.isPagingEnabled = true
                collection.collectionViewLayout = setCollectionViewLayout(collection: collection)
                return cell
            }
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell3") as? HeaderTableViewCell {
                cell.playButton.setImage(LRAsset.stop.image, for: .selected)
                cell.playButton.setImage(LRAsset.play.image, for: .normal)
                return cell
            }
        default:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as? TableVCell2 {
                cell.myImageView.image = images[indexPath.row]
                cell.headLine.text = headLines[indexPath.row]
                cell.body.text = bodys[indexPath.row]
                cell.tag = indexPath.row
                let att = NSTextAttachment()
                let attSize = CGSize(20,20)
                att.image = LRAsset.disco.image.resizedImage(withSize: attSize)
                att.bounds = CGRect(0,-5,Int(attSize.width),Int(attSize.height))
                let mutableAttText = NSMutableAttributedString(attributedString: NSAttributedString(string: users[indexPath.row]))
                let attImageString = NSAttributedString(attachment: att)
                mutableAttText.insert(attImageString, at: 0)
                cell.userLabel.attributedText = mutableAttText
                
                let att2 = NSTextAttachment()
//                let attSize = CGSize(20,20)
                att2.image = LRAsset.eye.image.resizedImage(withSize: attSize)
                att2.bounds = CGRect(0,-5 ,Int(attSize.width),Int(attSize.height))
                let string = counts[indexPath.row]
                let mutableAttText2 = NSMutableAttributedString(attributedString: NSAttributedString(string: String(string)))
                mutableAttText2.addAttributes([NSForegroundColorAttributeName: UIColor.myBlue], range: (String(string) as NSString).range(of: "\(counts[indexPath.row])"))
                let attImageString2 = NSAttributedString(attachment: att2 )
                mutableAttText2.insert(attImageString2, at: 4)
                cell.dateLabel.text = dates[indexPath.row]
                cell.viewersLabel.attributedText = mutableAttText2

                
                return cell
            }
        }
        
        
        return UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1 {
            return "热门语音"
        }
        return ""
    }
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        if section == 1 {
//            let rect = CGRect(origin: CGPoint(x:0,y:0), size: CGSize(width: 320, height: 80))
//            let view = UIView(frame: rect)
//            return view
//        }
//    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 1 {
            return 30
        }
        return 0
    }
        //collection delegate and datasource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionVCCell
        cell.tag = indexPath.row
        cell.image.image = images[indexPath.row]
        cell.title.text = headLines[indexPath.row]
        //        cell.label.text = String(indexPath.row)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let vc = FirstVCDetail()
//        vc.hidesBottomBarWhenPushed = true
//        if indexPath.row < urls.count {
//            vc.url = urls[indexPath.row]
//            self.navigationController?.pushViewController(vc, animated: true)
//        }

        let vc : FirstVCDetail = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "wa") as! FirstVCDetail
            vc.url = urls[indexPath.row]
        vc.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(vc, animated: true)
        
        
        
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let ivc = segue.destination as? FirstVCDetail {
            if let x = sender as? UITableViewCell {
                ivc.url = urls[x.tag]
                ivc.hidesBottomBarWhenPushed = true
            }
        }
        if let ivc = segue.destination as? MapVC {
            ivc.searchText = searchBar.text!
        }
    }
    
}
