# 팀프로젝트_BITCAMP_FITINZIP_ 피트니스 중계플랫폼

## Index
### 1. 소개
### 2. 목적
### 3. 플랜
### 4. 주요기능
### 5. 사용기술
### 6. 맡은 역할 및 기술
-------------------
### 1. 소개
- 프로젝트는 국비지원으로 약 6개월간 진행되었던 개발자양성과정의 Final Project 입니다.
- Spring 프레임워크와 Mybatis를 이용한 DB연동을 기반하였습니다.
- 형상관리는 분산저장방식 Git을 사용하였습니다.
![image](https://user-images.githubusercontent.com/73806238/119219411-6ef79900-bb20-11eb-9f32-e01ead0b70ca.png)
- 프로젝트 FitIn.Zip은 Fitness를 Zip(집) in(안)에서 한다는 의미와 Fitness를 좋아하는 사람들이 모여있는 사이트를 알집의 zip파일로 빗대어 표현한 중의적인 의미를 담고 있다.
------------
### 2. 목적
![image (1)](https://user-images.githubusercontent.com/73806238/119219476-c8f85e80-bb20-11eb-9fe7-e8ef6db3627e.png)
- 코로나19로 인해 현대인들의 체중증가를 원인으로하여, 홈트레이닝 중계플랫폼을 제공하여 온라인 PT를 통해 이를 극복하고자 하는 목적
----------
### 3. 플랜
![image (2)](https://user-images.githubusercontent.com/73806238/119219527-0230ce80-bb21-11eb-84d8-7909276bcd9d.png)
---------
### 4. 주요기능
![image (3)](https://user-images.githubusercontent.com/73806238/119219575-30aea980-bb21-11eb-8f78-f6e679606b42.png)
--------
### 5. 사용기술
![image (4)](https://user-images.githubusercontent.com/73806238/119219596-49b75a80-bb21-11eb-8198-73da63c0caac.png)
---------
### 6. 맡은 역할 및 기술
- Spring 프로젝트의 초기 환경설정을 하였습니다.(web.xml, rootcontext, DispatcherServlet)
- 관리자 페이지를 단독으로 구현하였습니다.
    * 중분류 : 강사 승인, 클래스 승인, 인적통계, 물적통계, 오프라인 매장등록
        + 강사 및 클래스 승인 : 무한스크롤 페이징, 승인에 따른 이벤트 처리,  승인상태에 따른 필터링 처리)
        + 물적 통계 : bar chart로 구성된 매출통계, 지난달대비 달성률, 월,일에 따른 이벤트 처리    
        + 인적 통계 : line chart로 구성된 인적통계, 월, 일에 따른 이벤트 처리
        + 오프라인 매장등록 : 도로명 주소, daum map API를 활용한 자사 오프라인 매장 등록
 - 관리자 페이지 경로는 아래를 참조 하세요    
    *BITCAMP_FITINZIP/FitInZip/src/main/java/com/spring/FitInZip/back/admin/  << 비즈니스로직 
    *BITCAMP_FITINZIP/FitInZip/src/main/java/com/spring/FitInZip/view/admin/  << controller
    *BITCAMP_FITINZIP/FitInZip/src/main/resources/mappings/admin.xml           << DB query
    *BITCAMP_FITINZIP/tree/master/FitInZip/src/main/webapp/WEB-INF/views/admin  << view
        
 ### 관리자페이지 시연영상 URL << 아래 경로를 클릭하세요
 https://bit.ly/3ffbU7f


