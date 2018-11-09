//
//  PickerViewController.swift
//  iOS3_HW
//
//  Created by 김예은 on 05/11/2018.
//  Copyright © 2018 kyeahen. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController {
    
    @IBOutlet weak var partTextField: UITextField!
    @IBOutlet weak var partImageView: UIImageView!
    
    var pickerView = UIPickerView()
    var partArr = ["기획", "디자인", "서버", "안드로이드", "iOS"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initPicker()
    }
    
    //MARK: 파트별 이미지 변환 액션 함수
    @IBAction func changedTextFieldAction(_ sender: UIButton) {
        if partTextField.text == partArr[0] {
            partImageView.image = #imageLiteral(resourceName: "sopt_doplan.png")
        } else if partTextField.text == partArr[1] {
            partImageView.image = #imageLiteral(resourceName: "sopt_dodesign.png")
        } else if partTextField.text == "" {
            
        } else {
            partImageView.image =  #imageLiteral(resourceName: "sopt_dodevelop.png")
        }
    }
}

//MARK: - PickerView extension
extension PickerViewController : UIPickerViewDelegate, UIPickerViewDataSource {
    
    //UIPickerViewDelegate
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //UIPickerViewDelegate
    //컴포넌트 당 row 가 몇개가 될 것인가
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return partArr.count
    }
    
    ///UIPickerViewDataSource 위한 것
    //각각의 row에 어떠한 내용이 들어갈 것인가
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return partArr[row]
        
    }
    
    func initPicker(){
        //구현 후에 해당 pickerView의 데이터 소스와 델리게이트가 있는 위치 알려 주는 것
        pickerView.delegate = self
        pickerView.dataSource = self
        
        setTextfieldView(textField: partTextField, selector: #selector(selectedPicker), inputView: pickerView)
        
    }

    func setTextfieldView(textField:UITextField, selector : Selector, inputView : Any){
        
        let bar = UIToolbar()
        bar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "확인", style: .done
            , target: self, action: selector)
        
        bar.setItems([doneButton], animated: true)
        textField.inputAccessoryView = bar
        
        if let tempView = inputView as? UIView {
            textField.inputView = tempView
        }
        if let tempView = inputView as? UIControl {
            textField.inputView = tempView
        }
        
    }
    
    @objc func selectedPicker(){
        
        let row = pickerView.selectedRow(inComponent: 0)
        
        partTextField.text = partArr[row]
        
        view.endEditing(true)
    }
}

