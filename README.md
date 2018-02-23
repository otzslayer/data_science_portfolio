Table of Contents
=================

   * [Personal Projects](#personal-projects)
      * [Hardware / OS Platform Used](#hardware--os-platform-used)
      * [Contents](#contents)
         * [PUBG Survival Time Prediction](#pubg-survival-time-prediction)
         * [Mercedes-Benz Greener Manufacturing](#mercedes-benz-greener-manufacturing)
         * [Sberbank Russian Housing Market](#sberbank-russian-housing-market)
         * [Visitor Segmentation for Baik Nam June's Exhibition](#visitor-segmentation-for-baik-nam-junes-exhibition)
         * [Predicting the House Price in King County](#predicting-the-house-price-in-king-county)
         * [Ensemble Approach for Financial Prediction](#ensemble-approach-for-financial-prediction)
         * [Korea Earthquake Interactive Map](#korea-earthquake-interactive-map)
         * [Network Analysis for Football Transfer Market](#network-analysis-for-football-transfer-market)
         * [Kobe Bryant Shot Selection](#kobe-bryant-shot-selection)

# Personal Projects

본 저장소는 개인적으로 진행한 프로젝트와 학회에 발표한 내용들을 정리하는 곳입니다. 
내용과 관련한 문의는 언제든지 otzslayer@gmail.com 로 해주시면 감사하겠습니다.

This repository containing portfolio of my projects, conference papers and presentations. 
Please fell free to contact me at otzslayer@gmail.com 

몇몇 프로젝트 자료에서 데이터가 누락된 경우는 용량 문제나 공개가 불가능하기 때문입니다.

If some project material such as data are missing, it is not possible to upload because the data exceeded the file size limit or the data cannot be public.


## Portfolio

[PDF](https://github.com/otzslayer/data_science_portfolio/blob/master/portfolio.pdf) (Updated 18.02.23)

본 포트폴리오는 프로젝트 중 일부만을 간략히 다루고 있습니다. 자세한 프로젝트 내용이나 수록되어 있지 않은 내용은 본 깃허브 저장소를 통해서 확인해주시기 바랍니다.

This portfolio covers briefly only some of my projects. Please check this repository for the details of the projects or the contents that are not included in this portfolio. 

## Hardware / OS Platform Used

- 15" Retina MacBook Pro (Early 2015) 2.7GHz Core i5-5257U, 8GB Ram
- macOS High Sierra
- Python 3.6+ with `jupyter==1.0.0`
  - `numpy==1.13.3`
  - `pandas==0.20.3`
  - `sklearn==0.19.0`
  - `scipy==0.19.1`
  - `statsmodels==0.8.0`
  - `matplotlib==2.0.2`
  - `seaborn==0.7.1`
  - `xgboost=0.6`
- R 3.4.2 with RStudio 1.1.383

## Contents

### PUBG Survival Time Prediction
(Feb 2018, 개인 프로젝트)

- [Notebook](https://github.com/otzslayer/data_science_portfolio/blob/master/PUBG/PUBG%20Survival%20Time%20Prediction.ipynb) / [PDF](https://github.com/otzslayer/data_science_portfolio/blob/master/PUBG/pubg_summary.pdf)

- http://pubgtracker.com 에서 제공하는 PlayerUnknown's Battleground의 상위 플레이어 데이터와 다양한 통계학습 알고리즘을 이용하여 특정 플레이어의 **스쿼드 평균 생존시간**을 예측했습니다. 또한 예측에 사용된 중요 변수들을 탐색하여 생존 전략을 세울 수 있도록 했습니다.

- Predicted the average survival time in a squad game using various statistical learning algorithms and the data of top PUBG players available at http://pubgtracker.com. Also, built survival strategies by exploring important variables identified in predictive algorithms.


### Mercedes-Benz Greener Manufacturing
(Jun 2017 - Jul 2017, Kaggle competition)


- [Notebook](https://github.com/otzslayer/data_science_portfolio/blob/master/Mercedes-Benz%20Greener%20Manufacturing/Mercedes-Benz%20Greener%20Manufacturing.ipynb)

- https://www.kaggle.com/c/mercedes-benz-greener-manufacturing

- 익명화된 변수들을 이용하여 차량이 테스트를 통과하는 데에 걸리는 시간을 예측했습니다. 서로 다른 변수 집합(PCA, MCA 등)과 세 가지의 다른 알고리즘을 사용하여 총 18개의 단일 모델을 만들었고, 이를 스태킹하여 앙상블 모델을 구현하였습니다. 캐글 컴피티션에서 상위 27%를 기록했습니다.

- Building the model using numerous anonymized features to predict that the time that the Mercedes-Benz car takes to pass testing. A total of 18 single models were created using different features sets (PCA, MCA, etc.) and three different algorithms. An ensemble model was implemented by stacked generalization and the result was of top 27% in leaderboard.

### Sberbank Russian Housing Market
(Jun 2017, Kaggle competition)

- [Notebook](https://github.com/otzslayer/data_science_portfolio/blob/master/Sberbank%20Russian%20Housing%20Market/Sberbank%20Russian%20Housing%20Market.ipynb)

- https://www.kaggle.com/c/sberbank-russian-housing-market

- 주택 변수와 거시 경제 변수들을 사용해 부동산 가격을 예측했습니다. 수많은 이상치와 제한적인 변수들로 인한 문제를 해결하기 위해 데이터 전처리에 많은 시간을 할애하였습니다. 그라디언트 부스팅과 랜덤 포레스트로 단일 모델을 구현하고, 가중평균을 이용하여 블렌딩하였습니다. 최종 결과로 상위 25%를 기록했습니다.

- Forecasted realty prices by using housing data and macroeconomic patterns. Did extensive data preprocessing to alleviate problems that caused by a large number of outliers and some features with a lack of information. Implemented single models with gradient boosting and random forest, models were blended by weighted average with (0.8, 0.2). The result was of top 25% in leaderboard.

### Visitor Segmentation for Baik Nam June's Exhibition
(Jun 2017, (주)벤플)

- http://benple.com/?p=7140

- 박아름, 한재윤, 이경전, "IoT-based Omni Channel Service for Smart Exhibition and Value of Data", ICEC 2017, (2017).
	- **ICEC 2017 최우수논문상 수상**

- 2016년 7월부터 2016년 12월까지 DDP에서 열린 '백남준쇼'는 버튼 인터넷이 적용된 세계 최초의 전시회로서, (주)벤플의 기술이 접목되었습니다. 작품에 할당된 버튼을 누름으로써 도슨트 서비스를 받을 수 있으며, 이를 통해 관람객들의 서비스 이용 행태에 대한 데이터를 얻을 수 있습니다. 구축한 데이터를 기반으로 분석 가능한 형태로 데이터를 가공, t-SNE와 k-평균 군집분석을 이용하여 관람객을 분류하였습니다. 이 결과를 토대로 추후 관람객 유치나 타겟 마게팅 등에 활용할 수 있습니다.

- The "Baik Nam June Show", which was held at DDP from July 2016 to October 2016, was the first exhibition in the world to be applied with "Button Internet". The docent service is provided to a visitor by pressing the button assigned to the artwork, and the service provider obtains the data that described the behavior pattern of the visitors. Based on the constructed database, the data was preprocessed in a form that can be analyzed, and then t-SNE and k-means clustering were conducted for the visitor segmentation. This result can be used for attracting visitors and target marketing in the follow-up exhibition.

### Predicting the House Price in King County
(Feb 2017, 개인 프로젝트)

- [Notebook](https://github.com/otzslayer/data_science_portfolio/blob/master/King%20County%20House%20Price/House_KC.Rmd)

- 거래일, 주택의 상세 정보, 위치 정보 등을 이용하여 시애틀 킹 카운티 지역의 주택 가격을 예측했습니다. 학부생 강의용으로 진행했던 프로젝트로, Adaptive Lasso를 포함한 다양한 회귀 분석 알고리즘을 사용했습니다.

- Predicted the house price in King County, Seattle using transaction dates, features of housing, and location information. This project that was conducted for undergraduate lectures, using a variety of regression analysis algorithms, including Adaptive Lasso.

### Ensemble Approach for Financial Prediction
(Jun 2016 - Dec 2016, 다수 외국계 은행 주관 프로젝트)

- [Keynote](https://github.com/otzslayer/data_science_portfolio/blob/master/Ensemble%20Approach%20for%20Financial%20Prediction/Ensemble%20Approach%20for%20Financial%20Prediction.pdf) / [Thesis](http://dcollection.khu.ac.kr.openlink.khu.ac.kr:8080/common/orgView/000000204945)

- 다양한 국가 기반의 주가 지수 및 환율 등의 변수를 이용하여 금융 시장을 예측하였습니다. 기존 연구와 다르게 지수의 로그 수익률을 입력 변수로 하여 모델을 구현했습니다. 단일 모델을 앙상블하여 성능을 높이고, Lasso를 이용하여 단일 모델에서의 설명을 가능하게 했습니다.

- Forecasted the financial market by using the stock market indices, exchange rates based on various contries. Unlike previous studies, the model was implemented with the logarithmic return of the index as input variable. Improved the performance by ensembling single models, and use Lasso to explain the feature importance of each variable.

- 한재윤, 이경전, “금융 시장 예측을 위한 앙상블 접근: 스태킹과 롤링 윈도우를 중심으로”, 2017 년 한국지능정보시스템학회 추계학술대회논문집, (2017).
- 한재윤 외 3 명, “기계학습과 롤링 윈도우 기법을 활용한 주식시장 및 환율 예측 모델 구현”, 2017 년 한국지능정보시스템학회 춘계학술대회논문집, (2017).

### Korea Earthquake Interactive Map
(Dec 2016, 개인 프로젝트)

- [Link](https://otzslayer.shinyapps.io/kor_quakes/) / [PDF](https://github.com/otzslayer/data_science_portfolio/blob/master/Korea%20Earthquake%20Interactive%20Map/Paper/ShortPaper.pdf)

- 기상청의 지진 데이터를 실시간으로 로드하고 Shiny를 이용하여 인터랙티브 지도를 구현했습니다. (현재 기상청 사이트의 도메인 변경으로 올바르게 데이터를 받아오지 못해 임시적으로 csv 파일을 불러오도록 했습니다.) 데이터 필터링 기능을 갖춘 슬라이더와 다양한 그래픽 요소들을 제공합니다.

- Implemented an interactive map, which described real-time earthquake data provided by Korea Meteorological Administration, using Shiny. (It is now temporarily importing the csv file due to the fact that the site was not able to receive the correct data because of the domain change of the site.) It provides a slider with data filtering function and various graphic elements.

### Network Analysis for Football Transfer Market
(Dec 2016, 개인 프로젝트)

- [Code](https://github.com/otzslayer/data_science_portfolio/blob/master/Network%20Analysis%20for%20Football%20Transfer%20Market/Network%20Analysis%20for%20Football%20Transfer%20Market.Rmd) / [PDF](https://github.com/otzslayer/data_science_portfolio/blob/master/Network%20Analysis%20for%20Football%20Transfer%20Market/ShortPaper.pdf)

- 네트워크 분석을 통해 2016년 여름 유럽 축구 이적시장을 바라보았습니다. 경제적 규모가 가장 큰 네 개의 리그와 최근 3년간 유럽 국가대항전에 출전한 팀들을 중심으로 가중치 네트워크 분석을 시도했습니다. 그 결과 네트워크의 연결 정도 분포는 멱법칙(power law)를 따르며, 위계 중심성을 통해서 잉글랜드 프리미어리그의 영향력이 매우 크다는 사실을 확인했습니다.

- I looked at European football transfer market in the summer of 2016 through the network analysis. I've trided to analyzed the weighted networks around the four largest leagues and the teams that have competed in the UEFA Champions League for the past three years. As a result, i found that the distribution of network connectivity follows the power law and that the English Premier League is influential through eigenvalue centrality.

### Kobe Bryant Shot Selection
(Apr 2016, Kaggle competition)

- [RMarkdown](https://github.com/otzslayer/data_science_portfolio/blob/master/Kobe%20Bryant%20Shot%20Selection/Kobe%20Bryant%20Shot%20Selection.Rmd) / [Keynote](https://github.com/otzslayer/data_science_portfolio/blob/master/Kobe%20Bryant%20Shot%20Selection/Keynote.pdf) / [Short Paper](https://github.com/otzslayer/data_science_portfolio/blob/master/Kobe%20Bryant%20Shot%20Selection/Paper/Paper.pdf)

- https://www.kaggle.com/c/kobe-bryant-shot-selection

- NBA의 공식 API에서 제공하는 데이터를 이용하여 NBA의 전설인 코비 브라이언트의 슛 성공 여부를 예측했습니다. 농구에 대한 도메인 지식을 이용하여 많은 변수들을 엔지니어링하였고, 그라디언트 부스팅을 사용하여 모델링했습니다. 최종 결과로 상위 6%를 기록했습니다.
- Using data provided by the NBA's official API, I predicted that which shots by Kobe Bryant, who is the legendary player of LA Lakers, will find the bottom of the net. Using domain knowledge of basketball, many variables were engineered and implemented using gradient boosting. The final result was the top 6%.
