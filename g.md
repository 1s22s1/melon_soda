## 勾配降下法

```mermaid
%%{init:{'theme':'forest'}}%%

graph TD
    最急降下法 --> |オンライン学習またはミニバッチ学習|確率的勾配降下法/SGD;
    確率的勾配降下法/SGD --> |力学的な考え方|モーメンタム/Monmentum;

    確率的勾配降下法/SGD --> |学習率の勾配を利用して自動で更新|AdaGrad;
    AdaGrad --> |直近の勾配ほど強い影響|RMSProp;
    RMSProp --> |学習率を徐々に小さくする|Adam;
    Adam --> |学習率が大きくなり過ぎることを改善|AMSGrad;
    Adam --> |学習率に上限と下限を設定|AdaBound;
    AMSGrad --> |学習率に上限と下限を設定|AMSBound;
```

## 物体認識タスク

- AlexNet(8層)
  - ILSVR2012にて優勝
  - ジェフリー・ヒントンが率いたチーム
- GoogLeNet(22層)
  - ILSVR2014にて優勝
  - Inceptionモジュールの導入
- VGG16(16層)
  - ILSVR2014にて準優勝
  - フィルタサイズを3✕3に統一
- ResNet(152層)
  - ILSVR2015にて優勝 
  - スキップ結合の導入
- WideResNet
  - フィルタ数を増やす
- DenseNet
  - Dense Block
- SENet
  - ILSVR2017にて優勝
  - Attention機構の導入
- MovileNet
  - メモリ量が限られている環境での利用を想定
  - 畳み込み層にDepthwise Separable Convoluctionを利用してパラメータ数を削減する 
