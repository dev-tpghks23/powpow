<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../assets/css/admin/admin-update.css">
    <link rel="stylesheet" href="../assets/css/index.css">
    <link rel="icon" href="../assets/images/favicon.ico">
    <title>공지사항 수정</title>
</head>
<body>
    <form action="admin-update-ok.admin" method="post" id="frame">
        
        <div class="menu-wrap">
            <img class="menu-icon" src="../assets/images/admin/menu.png" alt="메뉴">
            <span>공지사항 관리</span>
            <div id="menu-frame">
                <div class="menu-header">
                    <div class="welcome">admin님 환영합니다!</div>
                    <button class="logout">로그아웃</button>
                </div>
                <ul>
                    <li>
                        <p>공지사항 관리</p>
                        <div>
                            <p>공지사항 조회</p>
                            <p>공지사항 신규등록</p>
                        </div>
                    </li>
                    <li>
                        <p>배너 관리</p>
                        <div>
                            <p>배너조회</p>
                            <p>배너 신규등록</p>
                        </div>
                    </li>
                    <li>
                        <p>회원 관리</p>
                        <div>
                            <p>일반회원 정보조회</p>
                            <p>판매자회원 정보조회</p>
                        </div>
                    </li>
                    <li>
                        <p>쿠폰 관리</p>
                        <div>
                            <p>쿠폰조회</p>
                            <p>쿠폰 신규등록</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="division-line"></div>
        <div class="title">
            <h1 class="h1">게시글 수정</h1>
        </div>
        
        <div class="form-wrap">
            <div class="sub-wrap">
             <input type="hidden" name="id" value="${adminNotice.id}" />
                <div class="form-group">
                    <label for="title" class="label-title">제목</label>
                    <input type="text" id="title" name="adminNoticeTitle" placeholder="제목을 입력해주세요." value="${adminNotice.adminNoticeTitle}" />
                </div>
                <div class="form-group">
                    <label for="content" class="label-content">내용</label>
                    <textarea id="content" name="adminNoticeContent" class="content-title"
                        placeholder="내용을 입력해주세요."><c:out value="${adminNotice.adminNoticeContent}"/></textarea>
                </div>
            </div>
            <div class="button-group">
                <button class="button-submit">완료</button> 
                <button class="button-edit" onclick="cancelPost()">취소</button>
            </div>
        </div>
    </form>
</body>
    <script src="../assets/js/admin/admin-update.js"></script>
</html>