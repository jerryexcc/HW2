//
//  ViewController.swift
//  HW2
//  Created by 世明 on 2018/3/29.
//  Copyright © 2018年 世明. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    let star = ["牡羊座", "金牛座", "雙子座", "巨蟹座", "獅子座", "處女座", "天枰座", "天蠍座", "射手座", "摩羯座", "水瓶座", "雙魚座", "博愛座"]
    var boysImages: [UIImage] = [UIImage(named:"牡羊男瀧澤秀明")!,
                                 UIImage(named:"金牛男謝祖武")!,
                                 UIImage(named:"雙子男周渝民")!,
                                 UIImage(named:"巨蟹男梁朝偉")!,
                                 UIImage(named:"獅子男羅志祥")!,
                                 UIImage(named:"我自己")!,
                                 UIImage(named:"天秤男劉德華")!,
                                 UIImage(named:"天蠍男 吳奇隆")!,
                                 UIImage(named:"射手男李小龍")!,
                                 UIImage(named:"摩羯男言承旭")!,
                                 UIImage(named:"水瓶男Peter")!,
                                 UIImage(named:"雙魚男布鲁斯·威利斯")!,
                                 UIImage(named:"博愛座男")!]
    var girlsImages: [UIImage] = [UIImage(named:"牡羊女綾瀨遙")!,
                                  UIImage(named:"金牛女戴佩妮")!,
                                  UIImage(named:"雙子女新垣結衣")!,
                                  UIImage(named:"巨蟹女關穎")!,
                                  UIImage(named:"獅子女小倉唯")!,
                                  UIImage(named:"處女女王心凌")!,
                                  UIImage(named:"天秤女濱崎步")!,
                                  UIImage(named:"天蠍女林依晨")!,
                                  UIImage(named:"射手女林志玲")!,
                                  UIImage(named:"摩羯女李玟")!,
                                  UIImage(named:"水瓶女水樹奈奈")!,
                                  UIImage(named:"雙魚女花泽香菜")!,
                                  UIImage(named:"博愛座女")!]
    @IBOutlet weak var imageWho: UIImageView!
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var genderSelect: UISegmentedControl!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var btnConform: UIButton!
    @IBOutlet weak var sbPickerView: UIPickerView!
    @IBOutlet weak var labelName: UILabel!
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 //幾個滾輪
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return star.count
        //滾輪上的資料格數, 寫這樣可避免寫死資料筆數
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //myLabel.text = star[row]//即時顯示在Label上, 可不用等user選完才顯示
        return star[row] //顯示在格子上的文字 row:第幾筆資料
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        titleLabel.text = ""//選則好了之後把標題清空
        myLabel.text = "你選擇了" + star[row] //回傳選到的資料上的文字
    }
    @IBAction func btnAction(_ sender: Any) {
        let pickerPosition = sbPickerView.selectedRow(inComponent: 0)
        bgImage.isHidden = true
        if genderSelect.selectedSegmentIndex == 0{
            //男
            imageWho.image = boysImages[pickerPosition]
            switch pickerPosition{
            case 0:
                labelName.text = "牡羊男 瀧澤秀明"
                break
            case 1:
                labelName.text = "金牛男 永遠的許磊 謝祖武"
                break
            case 2:
                labelName.text = "雙子男 仔仔 周渝民"
                break
            case 3:
                labelName.text = "巨蟹男 影帝 梁朝偉"
                break
            case 4:
                labelName.text = "獅子男 亞洲舞王 羅志祥"
                break
            case 5:
                labelName.text = "處男(?) 毛吹自薦一下我自己"
                break
            case 6:
                labelName.text = "天秤男 華仔 劉德華"
                break
            case 7:
                labelName.text = "天蠍男 小虎隊 吳奇隆"
                break
            case 8:
                labelName.text = "射手男 功夫巨星 李小龍"
                break
            case 9:
                labelName.text = "摩羯男 F4 言承旭"
                break
            case 10:
                labelName.text = "水瓶男 像男神福山雅治的 Peter"
                break
            case 11:
                labelName.text = "雙魚男 最強老爸 布鲁斯·威利斯"
                break
            case 12:
                labelName.text = "你就這麼喜歡博愛座?"
                break
            default:
                break
            }
        }else{
            //女
            imageWho.image = girlsImages[pickerPosition]
            switch pickerPosition{
            case 0:
                labelName.text = "牡羊女 傻大姐 綾瀨遙"
                break
            case 1:
                labelName.text = "金牛女 Peter的偶像 戴佩妮"
                break
            case 2:
                labelName.text = "雙子女 治癒系女神 新垣結衣"
                break
            case 3:
                labelName.text = "巨蟹女 關穎"
                break
            case 4:
                labelName.text = "獅子女 超可愛的 小倉唯"
                break
            case 5:
                labelName.text = "處女(女) 王心凌"
                break
            case 6:
                labelName.text = "天秤女 流行天后 濱崎步"
                break
            case 7:
                labelName.text = "天蠍女 鄰家姊姊 林依晨"
                break
            case 8:
                labelName.text = "射手女 第一麻豆 林志玲"
                break
            case 9:
                labelName.text = "摩羯女 歌姬 Coco 李玟"
                break
            case 10:
                labelName.text = "水瓶女 女神 水樹奈奈"
                break
            case 11:
                labelName.text = "雙魚女 美女聲優 花泽香菜"
                break
            case 12:
                labelName.text = "你連博愛座都要女的喔?"
                break
            default:
                break
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

