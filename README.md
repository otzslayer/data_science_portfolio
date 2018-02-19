# Personal Projects

본 저장소는 개인적으로 진행한 프로젝트와 학회에 발표한 내용들을 정리하는 곳입니다.
내용과 관련한 문의는 언제든지 otzslayer@gmail.com 로 해주시면 됩니다.

## Hardware / OS Platform Used

- 15" Retina MacBook Pro (Early 2015) 2.7GHz Core i5-5257U, 8GB Ram
- macOS High Sierra
- Python 3.6+
  - `numpy`
  - `iPython`
  - `pandas`
  - `scikit-learn`
  - `scipy`
  - `statsmodel`
  - `matplotlib`
  - `seaborn`
- R 3.4.2 with RStudio 1.1.383

## Contents

### PUBG Survival Time Prediction
(Feb 2018, 개인 프로젝트)

- [Link](https://github.com/otzslayer/projects/blob/master/PUBG/PUBG%20Survival%20Time%20Prediction.ipynb) / [PDF](https://github.com/otzslayer/projects/blob/master/PUBG/pubg_summary.pdf)

- http://pubgtracker.com 에서 제공하는 PlayerUnknown's Battleground의 상위 플레이어 데이터와 다양한 통계학습 알고리즘을 이용하여 특정 플레이어의 **스쿼드 평균 생존시간**을 예측했습니다. 또한 예측에 사용된 중요 변수들을 탐색하여 생존 전략을 세울 수 있도록 했습니다.

- Predicted the average survival time in a squad game using various statistical learning algorithms and the data of top PUBG players available at http://pubgtracker.com. Also, built survival strategies by exploring important variables identified in predictive algorithms.


### Mercedes-Benz Greener Manufacturing
(Jun 2017 - Jul 2017, Kaggle competition)

- https://www.kaggle.com/c/mercedes-benz-greener-manufacturing

- 익명화된 변수들을 이용하여 차량이 테스트를 통과하는 데에 걸리는 시간을 예측했습니다. 서로 다른 변수 집합(PCA, MCA 등)과 세 가지의 다른 알고리즘을 사용하여 총 18개의 단일 모델을 만들었고, 이를 스태킹하여 앙상블 모델을 구현하였습니다. 캐글 컴피티션에서 상위 27%를 기록했습니다.

- Building the model using numerous anonymized features to predict that the time that the Mercedes-Benz car takes to pass testing. A total of 18 single models were created using different features sets (PCA, MCA, etc.) and three different algorithms. An ensemble model was implemented by stacked generalization and the result was of top 27% in leaderboard.

### Sberbank Russian Housing Market
(Jun 2017, Kaggle competition)

- 주택 변수와 거시 경제 변수들을 사용해 부동산 가격을 예측했습니다. 수많은 이상치와 제한적인 변수들로 인한 문제를 해결하기 위해 데이터 전처리에 많은 시간을 할애하였습니다. 그라디언트 부스팅과 랜덤 포레스트로 단일 모델을 구현하고, 가중평균을 이용하여 블렌딩하였습니다. 최종 결과로 상위 25%를 기록했습니다.

- Forecasted realty prices by using housing data and macroeconomic patterns. Did extensive data preprocessing to alleviate problems that caused by a large number of outliers and some features with a lack of information. Implemented single models with gradient boosting and random forest, models were blended by weighted average with (0.8, 0.2). The result was of top 25% in leaderboard.

### Visitor Segmentation for Baik Nam June's Exhibition
(Jun 2017, (주)벤플)

- http://benple.com/?p=7140

### Predicting the House Price in King County
(Feb 2017, 개인 프로젝트)

### Ensemble Approach for Financial Prediction
(Jun 2016 - Dec 2016, 다수 외국계 은행 주관 프로젝트)

- 한재윤, 이경전, “금융 시장 예측을 위한 앙상블 접근: 스태킹과 롤링 윈도우를 중심으로”, 2017 년 한국지능정보시스템학회 추계학술대회논문집, (2017).
- 한재윤 외 3 명, “기계학습과 롤링 윈도우 기법을 활용한 주식시장 및 환율 예측 모델 구현”, 2017 년 한국지능정보시스템학회 춘계학술대회논문집, (2017).

### Korea Earthquake Interactive Map
(Dec 2016, 개인 프로젝트)

### Network Analysis for Football Transfer Market
(Dec 2016, 개인 프로젝트)

### Kobe Bryant Shot Selection
(Apr 2016, Kaggle competition)
