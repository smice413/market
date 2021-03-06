

# 프로젝트 협업에 github 사용(sourcetree활용)  
**merge작업 혼자 하기**
 * Fork는 오픈소스일 때 외부에서 이 소스를 보고 자신이 작업해서 좋은 소스가 된다면 이 소스를 본주인의 계정 소스에 적용해 보라고 pull request요청을 하며 작업하는 방식이다.
 * 따라서 본계정의 repositorie를 복사하여 자식의 계정에 가져와 작업을 한다. 이 작업물은 본계정의 소스에 영향을 주지 않기 때문에 자유롭게 작업할 수 있지만, 본 계정 소스에 merge를 하기 위해서는 pull request 요청을 해야한다. 본계정 주인은 요청 사항의 글을 보고 merge를 결정할 수 있다. 단, 협업시 이 방식은 merge를 본계정 주인이 혼자해야 하기 때문에 github 관리만 하더라도 시간을 많이 쓸 것이다.

**merge권한 부여하기**
 * settings에 collaborators에서 merge 권한을 부여할 협업자들에게 이메일로 권한 승인 초대를 보낸다. 협업자들은 이메일을 각자 확인하여 초대에 응하는 버튼을 클릭한다.
 * merge권한 부여 작업이 끝나면 별도의 github에서의 repositories의 복제가 발생하지는 않는다. 같은 repositories계정에서 작업하는 것이다.  
  따라서 merge를 하는 과정에서의 주의 필요하다. 이는 merge를 각자 할 수 있기 때문에 충돌이 발생할 경우를 대비해 반드시 순서를 중요시해야한다. 또한 pull-commit-push의 과정을 반복해야한다.

**작업전에 해야할 일**
1. 원본 pull을 로컬 main브랜치에 받는다.
2. 로컬 main브랜치를 복사한 로컬 사본 브랜치를 만든다.
3. 로컬 사본 브랜치가 이클립스와 연결되어 있다.
4. 작업을 할 때 이클립스에 로컬 사본 브랜치가 연결되어 있는지 확인한다.  

**작업 시작**  
1. 로컬 사본 브랜치가 연결된 상태에서 작업한다.  
2. 로컬 사본 브랜치에서 작업이 끝나면 github에서 origin/사본 브랜치 생성한다.  
3. sourcetree에서 origin/사본 브랜치를 로컬 사본 브랜치쪽으로 pull받는다.  
4. commit을 하기전에 본인이 이클립스에서 작업한 것을 !!백업!!한다.  
5. 로컬 사본 브랜치에 이클립스에서 작업한 것을 commit한다.  
6. 로컬 사본 브랜치에서 origin/사본 브랜치에 push한다.  
7. 충돌이 발생하지 않으면, 로컬 main브랜치로 연결하여 사번 로컬 브랜치를 로컬 main브랜치로 병합한 후, origin/main 즉 github remote server로 push한다.  
8. github에 접속하여 파일이 잘 올라갔는지 확인한다.  

**충돌 발생 시!!**
1. 본인이 백업해 둔 것을 충돌이 발생한 부분에 맞춰서 수정한 후 다시 push를 한다.
2. 또는 충돌한 부분을 지웠다가 원본을 다시 pull하여 본인이 작업한 소스를 붙여넣는다.
3. 또는 연결된 브랜치를 모두 지우고 클론을 다시하여 원본을 다시 받고 소스를 붙여넣는다.
4. pull을 하는 경우 충돌 발생시에는 누군가와 같은 파일을 작업하다가 줄이겹치는 경우이다.따라서 작업하던 것을 지우고 다시 pull을 받고 최신상태의 파일에 소스를 붙여 넣는다.
 
---------------------------------------------------------------------------------------------------

# market프로젝트 설명

이 프로젝트는 인터넷 농산물 플랫폼을 만드는 것이다. 정확하게는 플랫폼 관리자는 별도로 존재하고 판매자와 구매자간의 거래가 이루어지는 것이다.  
판매자는 관리자에게 농산물을 판매할 수 있는 인터넷상 판매점을 입점 신청하고 관리자의 승인시 자신의 농산물을 입고시켜 구매자가 판매점을 통해 구매를 하는 것이다. 이를 통해 판매자와 구매자는 팔로우가 발생하고 구매자는 직거래를 통해 저렴한 가격에 농산물을 사먹을 수 있게 되는 것이다. 더하여 직거래 특성상 구매자들의 공동구매를 통해 더 저렴한 방법으로 농산물을 사먹을 수 있는 시스템도 갖춰져 있다.

---------------------------------------------------------------------------------------------------

# 기능 설명

**메인 페이지(로그인 이전)**  
  * 회원가입 : 아이디, 패스워드, 이름, 전화번호, 이메일+ 소셜 회원가입
  * 로그인 : 판매자(ID-PW 찾기, 임시PW 이메일 발송), 일반회원(ID-PW 찾기, 임시PW 이메일 발송), 관리자(관리자 계정 로그인시 관리자 페이지 활성화)
  * 입점신청 : shopID, 비밀번호(단방향 암호화), 상점명, 상점소개, 주소, 연락처, 정산계좌 등 작성
  * 카테고리 목록 : 상품목록 링크
  * 인기상품 목록 : 상품상세 링크

(로그인 이후)  
**일반 회원**  
  * 상품상세 : 기본기능(장바구니담기<판매자별 주문>), 공동구매,배송지 입력, 결제, 메일 발송
  * 상점메인 : 관심상점등록(팔로잉)
  * 마이페이지 : 회원정보(정보수정, PW변경, 회원탈퇴 및 사유), 배송지관리(목록, 등록, 수정, 삭제), 주문관련(주문상태별조회, 주문상세, 주문취소, 배송추적, 구매확정<7일후 자동구매확정 job>, 환불신청 등)
  * 부가기능: 
   
    *주문상태 : 공동구매대기, 공동구매실패, 배송전, 주문취소, 품절취소, 출고완료, 배송완료, 환불요청중, 환불완료, 거래완료

**shop 매니저**  
  * 상점정보 : 상세보기, 수정(비밀번호 변경), 폐점신청(사유등록)
  * 상품관리 : 상품목록(페이징, 상품유형별조회, 등록일자별조회), 상품상태변경(판매중, 일시판매중지, 판매완료, 판매정지<관리자권한 정지, 변경불가>),상품관리(등록<유형별>,수정,삭제)
  * 판매관리 : 판매목록(판매상태별조회, 페이징)
  * 판매상태 : 주문확인요청(품절취소, 운송장번호등록), 배송&구매확정전(배송추적, 7일후 자동구매확정), 환불신청(환불승인, 메일발송, 결제취소)
  * 문의하기 :  
   
    *상품유형 : 일반상품, 공동구매  
    *상품상태 : 판매중, 일시판매중지, 판매완료, 판매정지  
    *판매상태 : 주문확인요청, 배송&구매확정전, 환불신청, 환불완료    
    
**관리자 페이지**
  * 회원관리 : 회원목록, 강퇴
  * 상점관리 : 입점승인, 강제폐점
  * 상품관리 : 상품판매정지
  * 문의하기 : 




  
