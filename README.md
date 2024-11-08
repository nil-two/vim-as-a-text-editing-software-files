# テキスト編集ソフトとしてのVim サンプルファイル

[テキスト編集ソフトとしてのVim](https://techbookfest.org/product/fjTuaUUjq6WbWpGRrW0nzH?productVariantID=kvtYdtydkK2HTpkXp1AB6z)のサンプルファイル。

## 使い方

各ファイルはいずれも、編集前のテキスト、または編集を行うスクリプトとなっています。
各ファイルを開いて、本の解説の手順で編集、またはスクリプトの実行を行いながら、是非テキスト編集をお試しください。
一部ファイルの中身が空のファイルがありますが、それらは編集を行って内容を埋めるものになります。

## 変更点

次のように一部、本に記載のファイル名と異なるファイル、およびスクリプトの内容が異なるファイルがあります。
これは不備になるのですが、
ファイルを登場順に並べる上で支障のあるファイル名になっているファイル、
およびそのファイル名のファイルを参照しているファイルが数点ありました。
そのため、ファイルが登場順に並ぶよう、一部ファイル名、およびスクリプトの内容を変更しております。
ファイル名に関する部分以外についての変更はございません。
大変恐縮ですが、このリポジトリのファイルを参考に、テキスト編集をお試しいただけましたら幸いです。

```
[ファイル名変更]
2_howto/20_table.txt
↓
2_howto/240_table.txt

[参照ファイル名変更]
require "csv"
src = File.read("20_table.txt")
dst = CSV.generate do |csv|
  src.split("\n").each_slice(2) do |row|
    csv << row
  end
end
File.write("20_table.csv", dst)
↓
require "csv"
src = File.read("240_table.txt")
dst = CSV.generate do |csv|
  src.split("\n").each_slice(2) do |row|
    csv << row
  end
end
File.write("240_table.csv", dst)
```
