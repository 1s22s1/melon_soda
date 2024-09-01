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
