<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>corpMypage</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
</head>
<body>
    <div id="wrap">

        <header>
            <div class="header_logo">
                <div class="header_logo_img"><img src="./resources/img/attach.png"></div>
            </div>
            <h3>Good Job</h3>
        </header><!-- end header -->

        <div id="leftMenu">
            <nav>
                <ul>
                    <li>
                        <div class="leftMenu_mypage"><img src="">회원정보</div>
                    </li>
                    <li>
                        <div class="leftMenu_mypageEdit"><img src="">회원정보변경</div>
                    </li>
                    <li>
                        <div class="leftMenu_scrap"><img src="">공고관리</div>
                        <div class="leftMenu_scrap_circle"><img src="">0<!--여기에 scrap 총 갯수--></div>
                    </li>
                    <li>
                        <div class="leftMenu_notice"><img src="">스크랩</div>
                        <div class="leftMenu_notice_circle"><img src="">0<!--여기에 notice 총 갯수--></div>
                    </li>
                    <li>
                        <div class="leftMenu_myQuestion"><img src="">내가 한 질문</div>
                        <div class="leftMenu_myQuestion_circle"><img src="">0<!--여기에 myQuestion 총 갯수--></div>
                    </li>
                </ul>
            </nav>
        </div><!-- end leftMenu-->

        <div id="cont_mypage">
            <a class="cont_mypage_ID">${dto.corp_id}<!--여기에 아이디정보 받은거 추가 --></a>
            <a class="cont_mypage_corpName">${dto.corp_name}<!--여기에 기업명정보 받은거 추가 --></a>
            <a class="cont_mypage_corpEmail">${dto.corp_email}<!--여기에 이메일정보 받은거 추가 --></a>
            <a class="cont_mypage_employees">${dto.corpInpo_empNo}<!--여기에 직원수정보 받은거 추가 --></a>
            <a class="cont_mypage_bossName">대표명<!--여기에 대표명정보 받은거 추가 --></a>

            <button onclick="">정보수정</button><!--onclick에 버튼누르면 cont_mypageEdit로 가는 메소드 생성후 기입 -->
        </div><!-- end cont_mypage-->

        <div id="cont_mypageEdit">
            <h2>회원정보변경</h2>
            <a>${dto.corp_id}<!--여기에 아이디정보 받은거 추가 --></a>
            <a>비밀번호</a>
            <input type="text" name="cont_mypageEdit_PWD" size="50">
            <a>${dto.corp_name}<!--여기에 기업명정보 받은거 추가 --></a>
            <a>전화번호</a>
            <input type="text" name="cont_mypageEdit_phoneNumber1" size="10">
            <input type="text" name="cont_mypageEdit_phoneNumber2" size="20">
            <input type="text" name="cont_mypageEdit_phoneNumber3" size="20">
            <a>이메일</a>
            <input type="text" name="cont_mypageEdit_email1" size="20">
            <a>@</a>
            <input type="text" name="cont_mypageEdit_email2" size="20">
            <a>주소</a>
            <input type="text" name="cont_mypageEdit_address" size="50">
            <a>사업자번호</a>
            <input type="text" name="cont_mypageEdit_corpNum" size="50"> <!-- db에 사업자번호 확인해서 이름바꾸기-->
            <a>직원수</a>
            <input type="text" name="cont_mypageEdit_empNo" size="10">
            <a>대표명</a>
            <input type="text" name="cont_mypageEdit_bossName" size="10">
            <a>평균연봉</a>
            <input type="text" name="cont_mypageEdit_Sal" size="10">
            <a>기업소개</a>
            <input type="text" name="cont_mypageEdit_empInfo" size="10">

            <button type="submit" value="수정하기"></button>
            <input type="submit" value="취소하기" formaction="cancel"> <!-- 컨트롤러단에 cancel 생성하기-->
        </div><!-- end cont_mypageEdit-->

        <div id="cont_scrap">
            <h2>스크랩</h2>
            <ul>
                <!-- 스크랩한 공고 리스트-->
                <!-- paging의 content_view 167번째단처럼 로직으로 li -->
                <!-- 둥근사각형 안에 별(스크랩/언스크랩버튼)이미지 넣어야함 -->
            </ul>
        </div><!-- end cont_scrap-->

        <div id="cont_notice">
            <h2>공고관리</h2>
            <h3>내역</h3>
            <ul>
                <li>지난1개월</li>
                <li>지난1년</li>
            </ul>
            <a>업데이트순</a>
            <hr>
            <ul>
                <!-- 공고 리스트-->
                <!-- paging의 content_view 167번째단처럼 로직으로 li -->
                <!-- 공고 리스트 안에 삭제하기 버튼 만들어야함-->
                <!-- 공고번호를 확인해서 삭제하는 컨트롤러단 delete 만들어야함-->
                <!-- <input type="submit" value="삭제하기" formaction="delete"> -->
            </ul>
			<ul>
				<li class="cont_notice_li" href="${dto.emp_postNo}">
					<a class="move_link">${dto.emp_title}</a>
					<a class="move_link">${dto.emp_startDate}</a>
				</li>
			</ul>
        </div><!-- end cont_notice-->

        <div id="cont_myQuestion">
            <h2>내가 한 질문</h2>
            <h3>내역</h3>
            <ul>
                <li>지난1개월</li>
                <li>지난1년</li>
            </ul>
            <a>업데이트순</a>
            <ul>
                <!-- 질문 글 리스트-->
                <!-- paging의 content_view 167번째단처럼 로직으로 li -->
            </ul>
        </div><!-- end cont_myQuestion-->



    </div>
</body>
<script>
	document.querySelector('.mypage_button').addEventListener('click', function() {
	    document.getElementById('cont_mypage').style.display = 'none';
	    document.getElementById('cont_mypageEdit').style.display = 'block';
		document.getElementById('cont_apply').style.display = 'none';
		document.getElementById('cont_recommend').style.display = 'none';
		document.getElementById('cont_scrap').style.display = 'none';
		document.getElementById('cont_resume').style.display = 'none';
		document.getElementById('cont_myQuestion').style.display = 'none';
	});
</script>
</html>