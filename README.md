# UITextView

## 概要
UITextViewは、複数行のテキストを表示するために利用します。

## 関連クラス
UIScrollView, UITextInput, UIContentSizeCategoryAdjusting


## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|text | 表示するテキストを設定する |  textView.text = "testtesttesttesttest" |
|textColor  | 表示するテキストの色を設定する | textView.textColor = UIColor.red |
|font | 表示するテキストのフォントを設定する | textView.font = UIFont.boldSystemFont(ofSize: 20) |
|textAlignment  |  表示するテキストの位置を設定する | textView.textAlignment = NSTextAlignment.center |
|isEditable  | テキストを編集できるか設定する | textView.isEditable = false |
|dataDetectorTypes  | テキスト内からリンクに変換する文字の種類を設定する | textView.dataDetectorTypes = .all |


## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/uikit/uitextview
