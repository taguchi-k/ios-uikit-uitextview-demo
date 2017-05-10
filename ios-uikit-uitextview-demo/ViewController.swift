//
//  ViewController.swift
//  ios-uikit-uitextview-demo
//
//  Created by k_motoyama on 2017/03/01.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var textView: UITextView!
    @IBOutlet private weak var editableTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    /// setup系のメソッドを呼び出す
    private func setup() {
        setupText()
        setupTextColor()
        setupTextFont()
        setupAlignment()
        setupEditable()
        setupDateDetectorType()
        setupEditableTextView()
    }

    // 表示するテキストを設定する
    private func setupText(){
        textView.text = "testtesttesttesttest https://www.google.co.jp/ testtesttesttesttesttesttest 000-0000 testtesttesttesttesttesttesttesttesttesttesttest"
    }

    // 表示するテキストの色を設定する
    private func setupTextColor(){
        textView.textColor = .red
    }

    // 表示するテキストのフォントを設定する
    private func setupTextFont(){
        textView.font = .boldSystemFont(ofSize: 20)
    }

    // 表示するテキストの位置を設定する
    private func setupAlignment(){
        textView.textAlignment = .center
    }

    // テキストを編集できるか設定する
    private func setupEditable(){
        textView.isEditable = false
    }

    // テキスト内に特定の文字がある場合、抽出してリンクに変換する
    private func setupDateDetectorType(){
        textView.dataDetectorTypes = .all
    }

    // MARK: - UITextViewのキーボード用ツールバーを生成

    /// キーボード上にツールバーを追加して閉じるボタンを実装する
    private func setupEditableTextView() {

        let toolBar = UIToolbar()
        toolBar.sizeToFit()

        // スペーサー
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        // 閉じる用のDoneボタン
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(didTapDoneButton(sender:)))
        toolBar.items = [spacer, doneButton]

        editableTextView.inputAccessoryView = toolBar
    }

    /// Doneボタン押下時に呼ばれる
    @objc private func didTapDoneButton(sender: UIBarButtonItem) {
        view.endEditing(true)
    }
}

// MARK: - UITextViewDelegate
extension ViewController: UITextViewDelegate {

    // IB上で、入力可能なUITextViewのDelegate設定済み

    // 編集開始直後に呼ばれる
    func textViewDidBeginEditing(_ textView: UITextView) {
        print(#function)
        print(textView.text)
    }

    // textViewのテキストまたは属性がユーザーによって変化したら呼ばれる
    func textViewDidChange(_ textView: UITextView) {
        print(#function)
        print(textView.text)
    }

    // 編集終了直後に呼ばれる
    func textViewDidEndEditing(_ textView: UITextView) {
        print(#function)
        print(textView.text)
    }
}
