<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/open-clapperboard-.png.ico">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>무비파인더</title>
</head>
<body>
	<div>   
		<!-- Header -->
		<%@ include file="/module/top.jsp"%>
		<!-- /Header -->
		<!-- Contaniner -->
		<div>

        <!-- LineMap -->

        <div id="ctl00_navigation_line" class="linemap-wrap">
            <div class="sect-linemap">
                <div class="sect-bcrumb">
                    <ul>
                        <li>
                        	<a href="/"><img alt="home" src="http://img.cgv.co.kr/R2014/images/common/btn/btn_home.png" /></a>
                        </li>
                        <li >
                        	<a href="/movies/">영화</a>
                        </li>
                        <li  class="last">
                        	무비파인더
                        </li>
                    </ul>
                </div>
                <div>
                    <ul>
                        <li><a href="#">VIP LOUNGE</a></li>
                        <li><a href="#" title="새창" class="specialclub">Club서비스</a></li>
                        <li><a href="http://phototicket.cgv.co.kr/" title="새창" class="photi" target="_blank">포토티켓</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //LineMap -->

		<!-- Contents Area -->
		<div id="contents" class="">
            
            <!-- Contents Start -->
			
<div>
        
    <div>
        <h3><img src="http://img.cgv.co.kr/R2014/images/title/h3_finder.png" alt="좋아하는 영화, 찾고싶은 영화를 CGV에서 찾아드립니다!" /></h3>
        <form id="frmMovieSearch" novalidate="novalidate">
            <fieldset>
                <legend>무비파인더 - 좋아하는 영화, 찾고싶은 영화를 CGV에서 찾아드립니다!</legend>
                <!-- checkbox ID 값과 label for값을 똑같이 한다 -->
                <table cellpadding="0" cellspacing="" summary="무비파인터 영화이름, 장르, 제작국가, 관람등급, 제작년도 를 통해 검색할수 있습니다.">
                    <caption>무비파인더 검색 및 조건</caption>
                    <colgroup>
                        <col class="finder-col01" />
                        <col />
                    </colgroup>
                    <tbody>
                    <tr>
                        <th class="searchtype" scope="row">영화검색</th>
                        <td>
                        	<label class="hidden" for="keyword_type">영화검색 목록</label>
                            <select title="영화검색 목록" id="keyword_type">
                                <option value="0" selected>전체</option>
                                <option value="1">영화제목</option>
                                <option value="2">주연배우</option>
                                <option value="3">감독</option>
                            </select>
                            <input type="text" title="영화검색 키워드입력" id="keyword" minlength="2" maxlength="20" style="width:410px;" placeholder="키워드를 입력해 주세요" value="" />
                        </td>
                    </tr>
                    <tr>
                        <th class="genretype" scope="row">장르</th>
                        <td>
                            <ul>
        	                    <li><input type="checkbox" checked="checked" id="all_genre" name="all-genre" value="all" />
        	                    	<label for="all_genre">전체</label>
        	                    </li>
                                <li class="collage"><input type="checkbox" name="indi_genre" id="is_indi" value="1" />
                                	<label for="is_indi">아트하우스</label>
                                </li>
                            	<li><input type="checkbox" id="genre226" name="genre" value="08" />
                                 	<label for="genre226">가족</label>
                                </li>
                                <li><input type="checkbox" id="genre217" name="genre" value="10" />
                                	<label for="genre217">공포/호러</label>
                                </li>
                                <li><input type="checkbox" id="genre723" name="genre" value="06" />
                                	<label for="genre723">드라마</label>
                                </li>
                                <li><input type="checkbox" id="genre721" name="genre" value="13" />
                                	<label for="genre721">SF</label>
                                </li>
                                <li><input type="checkbox" id="genre1228" name="genre" value="04" />
                                	<label for="genre1228">멜로/로맨스</label>
                                </li>
                                <li><input type="checkbox" id="genre732" name="genre" value="03" />
                                	<label for="genre732">코미디</label>
                                </li>
                                <li><input type="checkbox" id="genre727" name="genre" value="02" />
                                	<label for="genre727">애니메이션</label>
                                </li>
                                <li><input type="checkbox" id="genre722" name="genre" value="05" />
                                	<label for="genre722">다큐멘터리</label>
                                </li>
                              	<li><input type="checkbox" id="genre218" name="genre" value="11" />
                              		<label for="genre218">뮤지컬</label>
                              	</li>
                                <li><input type="checkbox" id="genre219" name="genre" value="12" />
                                	<label for="genre219">미스터리</label>
                                </li>
                                <li><input type="checkbox" id="genre222" name="genre" value="12" />
                                	<label for="genre222">범죄</label>
                                </li>
                                <li><input type="checkbox" id="genre1886" name="genre" value="16" />
                                	<label for="genre1886">서부</label>
                                </li>
                                <li><input type="checkbox" id="genre725" name="genre" value="14" />
                                	<label for="genre725">스릴러</label>
                                </li>
                                <li><input type="checkbox" id="genre224" name="genre" value="01" />
                                	<label for="genre224">액션</label>
                                </li>
                                <li><input type="checkbox" id="genre728" name="genre" value="01" />
                               		<label for="genre728">어드벤처</label>
                                </li>
                                <li><input type="checkbox" id="genre1888" name="genre" value="09" />
                                	<label for="genre1888">역사</label>
                                </li>
                                <li><input type="checkbox" id="genre731" name="genre" value="15" />
                                	<label for="genre731">전쟁</label>
                                </li>
                                <li><input type="checkbox" id="genre227" name="genre" value="18" />
                                	<label for="genre227">환타지</label>
                                </li>
                                <li><input type="checkbox" id="genre729" name="genre" value="07" />
                                	<label for="genre729">에로</label>
                                </li>
                                <li><input type="checkbox" id="genre1895" name="genre" value="17" />
                                	<label for="genre1895">기타</label>
                                </li> 
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th class="maketype" scope="row">제작국가</th>
                        <td>
                            <ul>
                                <li><input type="checkbox" name="all-national-code" id="all_national_code" /><label for="all_national_code">전체</label></li>
                                
                                    <li><input type="checkbox" id="national_code_164" name="national-code" 
                                        
                                    value="164" /><label 
                                        for="national_code_164">한국</label></li>
                                
                                    <li><input type="checkbox" id="national_code_102" name="national-code" 
                                        
                                    value="102" /><label 
                                        for="national_code_102">미국</label></li>
                                
                                    <li><input type="checkbox" id="national_code_141" name="national-code" 
                                        
                                    value="141" /><label 
                                        for="national_code_141">일본</label></li>
                                
                                    <li><input type="checkbox" id="national_code_143" name="national-code" 
                                        
                                    value="143" /><label 
                                        for="national_code_143">중국</label></li>
                                
                                    <li><input type="checkbox" id="national_code_167" name="national-code" 
                                        
                                    value="167" /><label 
                                        for="national_code_167">홍콩</label></li>
                                
                                    <li><input type="checkbox" id="national_code_161" name="national-code" 
                                        
                                    value="161" /><label 
                                        for="national_code_161">프랑스</label></li>
                                
                                    <li><input type="checkbox" id="national_code_128" name="national-code" 
                                        
                                    value="128" /><label 
                                        for="national_code_128">영국</label></li>
                                
                                    <li><input type="checkbox" id="national_code_93" name="national-code" 
                                        
                                    value="93" /><label 
                                        for="national_code_93">독일</label></li>
                                
                                    <li><input type="checkbox" id="national_code_139" name="national-code" 
                                        
                                    value="139" /><label 
                                        for="national_code_139">인도</label></li>
                                
                                    <li><input type="checkbox" id="national_code_1000" name="national-code" 
                                        
                                    value="1000" /><label 
                                        for="national_code_1000">기타</label></li>
                                
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <th class="gradetype" scope="row">관람등급</th>
                        <td>
                            <ul>
                                <li><input type="checkbox" id="all_grade" name="all-grade" value="233" /><label for="all_grade">전체</label></li>
                                
                                    <li><input type="checkbox" id="grade233" name="grade" 
                                        
                                    value="233" /><label 
                                        for="grade233">전체관람가</label></li>
                                
                                    <li><input type="checkbox" id="grade230" name="grade" 
                                        
                                    value="230" /><label 
                                        for="grade230">12세 관람가</label></li>
                                
                                    <li><input type="checkbox" id="grade231" name="grade" 
                                        
                                    value="231" /><label 
                                        for="grade231">15세 관람가</label></li>
                                
                                    <li><input type="checkbox" id="grade232" name="grade" 
                                        
                                    value="232" /><label 
                                        for="grade232">청소년 관람불가</label></li>
                                
                                    <li><input type="checkbox" id="grade919" name="grade" 
                                        
                                    value="919" /><label 
                                        for="grade919">미정</label></li>
                                
                            </ul>
                        </td>
                    </tr>
                    </tbody>
                </table>
                    <div class="wrap-submit">
                    <button type="submit" class="round inred" id="btn_submit"><span>검색</span></button>
                    <button type="reset" class="round red" id="btn_reset"><span>초기화</span></button>
                </div>
            </fieldset>
        </form>
    </div>
</div>

<!-- 실컨텐츠 시작 -->

<!-- 실컨텐츠 시작 -->
    <div class="wrap-movie-chart">
        <!-- Heading Map Multi -->
        <div class="tit-heading-wrap">
            <h3>무비차트</h3>
           
                <div class="submenu">
                    <ul>
                        <li class="on"><a href="/movies/finder.aspx?" title="선택">무비차트</a></li>
                        <li><a href="/movies/pre-movies.aspx">상영예정작</a></li>
                        <li><a href="/movies/finder.aspx?lt=3">CGV아트하우스</a></li>
                    </ul>
                </div>
            </div>
            <!-- //Heading Map Multi -->
            <!-- Sorting -->
            <div class="sect-sorting" id="sect-finder">
                 <div class="nowshow">
                        <input type="checkbox" id="chk_finder_nowshow"  title="현재 선택됨" checked/>
                
                <label for="chk_nowshow">현재 상영작만 보기</label>                
            </div>
            <label for="order_type" class="hidden">정렬</label>
            <select id="order_type" name="order-type">
				<option title="현재 선택됨" selected value="1">예매율순</option>
                <option value="2">평점순</option>
                <option value="3">관람객순</option>
            </select>
            <button type="button" class="round gray"><span>GO</span></button>
        </div>
        <!-- //Sorting -->
        
        <div class="sect-movie-chart">
            <h4 class="hidden">
                무비차트 - 예매율순
            </h4>
            <ol>
            
                <li>
                    <div class="box-image" >
                        <strong class="rank">No.1</strong>	
                        <a href="/movies/detail-view/?midx=79386">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79386/79386_185.jpg" alt="미이라 포스터" onerror="errorImage(this)"/>
                                <span class="ico-grade grade-15">15세 이상</span>
                            </span>
                            <strong class="no1">1위</strong>
                        </a>
                        <span class="screentype">
                            <a class="imax" href="#" title="IMAX 상세정보 바로가기" data-regioncode="07">IMAX</a>
                            <a class="forDX" href="#" title="4DX 상세정보 바로가기" data-regioncode="4D14">4DX</a>
                            <a class="threeD" href="#" title="3D 상세정보 바로가기" data-regioncode="3D">3D</a>
                        </span>
                    </div>
                    <div class="box-contents">
                        <a href="/movies/detail-view/?midx=79386">
                            <strong class="title">미이라</strong>
                        </a>
                        <div class="score">
                            <strong class="percent">예매율<span>42.8%</span></strong>
                            <div class="egg-gage small">
                                <span class="egg good"></span>
								<span class="percent">80%</span>
							</div>
                        </div>
                        <span class="txt-info">
                            <strong>
                                2017.06.06 
                                <span>개봉</span>
                            </strong>
                        </span>
                        <span class="like"> 
                            <button class="btn-like" value="79386">영화 찜하기</button>
                            <span class="count"> 
                                <strong><i>18,303</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span>
                            <a class="link-reservation" href="/ticket/?MOVIE_CD=20012948&MOVIE_CD_GROUP=20012948">예매</a>
                        </span>
                    </div>    
                </li>
            
                <li>
                    <div class="box-image" >
                        <strong class="rank">No.2</strong>	
                        <a href="/movies/detail-view/?midx=79662">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79662/79662_185.jpg" alt="악녀 포스터" onerror="errorImage(this)"/>
                                <span class="ico-grade grade-19">청소년 관람불가</span>
                            </span>
                            
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="/movies/detail-view/?midx=79662">
                            <strong class="title">악녀</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>18.5%</span></strong>
                            <!--[2015-12-10] 에그포인트 적용 범위1~ 3위. start : add_mwpark-->
                            <div class="egg-gage small">
                                <span class="egg great"></span>
								<span class="percent">89%</span>
							</div>
                            <!--[2015-12-10] 에그포인트 적용 범위 1~ 3위. end : add_mwpark-->
                            <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                <div class="point">
                                    <em>89.0</em>
                                </div>
                            [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                        </div>

                        <span class="txt-info">
                            <strong>
                                2017.06.08 
                                <span>개봉</span>
                                
                            </strong>
                        </span>
                        <span class="like"> 
                            <button class="btn-like" value="79662">영화 찜하기</button>
                            <span class="count"> 
                                <strong><i>6,723</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span>
                            <a class="link-reservation" href="/ticket/?MOVIE_CD=20012902&MOVIE_CD_GROUP=20012902">예매</a>
                        </span>
                    </div>    
                </li>
            
                <li>
                    <div class="box-image" >
                        <strong class="rank">No.3</strong>	
                        <a href="/movies/detail-view/?midx=79660">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79660/79660_185.jpg" alt="원더우먼 포스터" onerror="errorImage(this)"/>
                                <span class="ico-grade grade-12">12세 이상</span>
                            </span>
                            
                        </a>
                        <span class="screentype">
                            
                                <a class="threeD" href="#" title="3D 상세정보 바로가기" data-regioncode="3D">3D</a>
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="/movies/detail-view/?midx=79660">
                            <strong class="title">원더우먼</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>10.5%</span></strong>
                            <!--[2015-12-10] 에그포인트 적용 범위1~ 3위. start : add_mwpark-->
                            <div class="egg-gage small">
                                <span class="egg great"></span>
								<span class="percent">91%</span>
							</div>
                            <!--[2015-12-10] 에그포인트 적용 범위 1~ 3위. end : add_mwpark-->
                            <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                <div class="point">
                                    <em>91.0</em>
                                </div>
                            [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                        </div>

                        <span class="txt-info">
                            <strong>
                                2017.05.31 
                                <span>개봉</span>
                                
                            </strong>
                        </span>
                        <span class="like"> 
                            <button class="btn-like" value="79660">영화 찜하기</button>
                            <span class="count"> 
                                <strong><i>11,096</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span>
                            <a class="link-reservation" href="/ticket/?MOVIE_CD=20012900&MOVIE_CD_GROUP=20012900">예매</a>
                        </span>
                    </div>    
                </li>
            
            </ol>

            <ol>
            
                <li>
                    <div class="box-image" >
                        <strong class="rank">No.4</strong>	
                        <a href="/movies/detail-view/?midx=79598">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79598/79598_185.jpg" alt="캐리비안의 해적: 죽은 자는 말이 없다 포스터" onerror="errorImage(this)"/>
                                <span class="ico-grade grade-12">12세 이상</span>
                            </span>
                        </a>
                        <span class="screentype">
                            
                                <a class="screenx" href="#" data-regioncode="SCX">SCREENX</a>
                            
                                <a class="threeD" href="#" data-regioncode="3D">3D</a>
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="/movies/detail-view/?midx=79598">
                            <strong class="title">캐리비안의 해적: 죽은 자는 말이 없다</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>6.7%</span></strong>
                             <!--[2015-12-10] 에그포인트 적용 범위4~ 7위. start : add_mwpark-->
                            <div class="egg-gage small">
                                <span class="egg great"></span>
								<span class="percent">93%</span>
							</div>
                            <!--[2015-12-10] 에그포인트 적용 범위 4~ 7위. end : add_mwpark-->
                            <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                <div class="point">
                                    <em>93.0</em>
                                </div>
                            [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                        </div>

                        <span class="txt-info">
                            <strong>
                                2017.05.24 
                                <span>개봉</span>
                                
                            </strong>
                        </span>
                        <span class="like"> 
                            <button class="btn-like" value="79598">영화 찜하기</button>
                            <span class="count"> 
                                <strong><i>16,237</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span> 

                            <a class="link-reservation" href="/ticket/?MOVIE_CD=20012926&MOVIE_CD_GROUP=20012926">예매</a>
                            
                        </span>
                    </div>    
                </li>
            
                <li>
                    <div class="box-image" >
                        <strong class="rank">No.5</strong>	
                        <a href="/movies/detail-view/?midx=79673">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79673/79673_185.jpg" alt="노무현입니다 포스터" onerror="errorImage(this)"/>
                                <span class="ico-grade grade-12">12세 이상</span>
                            </span>
                        </a>
                        <span class="screentype">
                            
                                <a class="arthouse" href="#" data-regioncode="MovieCollage">아트하우스</a>
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="/movies/detail-view/?midx=79673">
                            <strong class="title">노무현입니다</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>5.4%</span></strong>
                             <!--[2015-12-10] 에그포인트 적용 범위4~ 7위. start : add_mwpark-->
                            <div class="egg-gage small">
                                <span class="egg great"></span>
								<span class="percent">98%</span>
							</div>
                            <!--[2015-12-10] 에그포인트 적용 범위 4~ 7위. end : add_mwpark-->
                            <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                <div class="point">
                                    <em>98.0</em>
                                </div>
                            [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                        </div>

                        <span class="txt-info">
                            <strong>
                                2017.05.25 
                                <span>개봉</span>
                                
                            </strong>
                        </span>
                        <span class="like"> 
                            <button class="btn-like" value="79673">영화 찜하기</button>
                            <span class="count"> 
                                <strong><i>10,745</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span> 

                            <a class="link-reservation" href="/ticket/?MOVIE_CD=20012931&MOVIE_CD_GROUP=20012931">예매</a>
                            
                        </span>
                    </div>    
                </li>
            
                <li>
                    <div class="box-image" >
                        <strong class="rank">No.6</strong>	
                        <a href="/movies/detail-view/?midx=79674">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79674/79674_185.jpg" alt="심야식당2 포스터" onerror="errorImage(this)"/>
                                <span class="ico-grade grade-12">12세 이상</span>
                            </span>
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="/movies/detail-view/?midx=79674">
                            <strong class="title">심야식당2</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>1.8%</span></strong>
                             <!--[2015-12-10] 에그포인트 적용 범위4~ 7위. start : add_mwpark-->
                            <div class="egg-gage small">
                                <span class="egg great"></span>
								<span class="percent">99%</span>
							</div>
                            <!--[2015-12-10] 에그포인트 적용 범위 4~ 7위. end : add_mwpark-->
                            <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                <div class="point">
                                    <em>104.0</em>
                                </div>
                            [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                        </div>

                        <span class="txt-info">
                            <strong>
                                2017.06.08 
                                <span>개봉</span>
                                
                            </strong>
                        </span>
                        <span class="like"> 
                            <button class="btn-like" value="79674">영화 찜하기</button>
                            <span class="count"> 
                                <strong><i>3,085</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span> 

                            <a class="link-reservation" href="/ticket/?MOVIE_CD=20012940&MOVIE_CD_GROUP=20012940">예매</a>
                            
                        </span>
                    </div>    
                </li>
            
                <li>
                    <div class="box-image" >
                        <strong class="rank">No.7</strong>	
                        <a href="/movies/detail-view/?midx=79604">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79604/79604_185.jpg" alt="대립군 포스터" onerror="errorImage(this)"/>
                                <span class="ico-grade grade-15">15세 이상</span>
                            </span>
                        </a>
                        <span class="screentype">
                            
                        </span>
                    </div>
                    
                    <div class="box-contents">
                        <a href="/movies/detail-view/?midx=79604">
                            <strong class="title">대립군</strong>
                        </a>

                        <div class="score">
                            <strong class="percent">예매율<span>1.3%</span></strong>
                             <!--[2015-12-10] 에그포인트 적용 범위4~ 7위. start : add_mwpark-->
                            <div class="egg-gage small">
                                <span class="egg great"></span>
								<span class="percent">87%</span>
							</div>
                            <!--[2015-12-10] 에그포인트 적용 범위 4~ 7위. end : add_mwpark-->
                            <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                <div class="point">
                                    <em>87.0</em>
                                </div>
                            [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                        </div>

                        <span class="txt-info">
                            <strong>
                                2017.05.31 
                                <span>개봉</span>
                                
                            </strong>
                        </span>
                        <span class="like"> 
                            <button class="btn-like" value="79604">영화 찜하기</button>
                            <span class="count"> 
                                <strong><i>7,515</i><span>명이 선택</span></strong> 
                                <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                            </span> 

                            <a class="link-reservation" href="/ticket/?MOVIE_CD=20012929&MOVIE_CD_GROUP=20012929">예매</a>
                            
                        </span>
                    </div>    
                </li>
            
            </ol>
            

            <ol id="movie_more_container" style="display:none" class="list-more">
                <li></li>
            </ol>

            <div class="chart-ad">
                <div class="box-com">                    
                    <iframe src='' width='160' height='300' frameborder='0' scrolling='no' topmargin='0' leftmargin='0' marginwidth='0' marginheight='0' ID='Movie_Chart' NAME='Movie_Chart'></iframe>
                </div>                
                <div class="chart_ad_desc">
                    <dl>
                        <dt>
                            <img src="http://img.cgv.co.kr/R2014/images/ad/ico_ad1.png" alt="ad"/>
                            <span id="ad_txt1"></span>
                        </dt>
                        <dd>
                            <span id="ad_txt2"></span>
                        </dd>
                    </dl>
                </div>
            </div>
            
        </div>
    </div><!-- .sect-moviechart -->



<div class="chart-ad-bottom">
    <iframe src="" width="980" height="90" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="SponsorBar_980" id="SponsorBar_980"></iframe>
</div>
<div class="sect-ad-benner"> 
        <a href="http://section.cgv.co.kr/event/running/SimpleEventZone.aspx?sidx=11"><img src="http://img.cgv.co.kr/R2014/images/main/phototicket_978_223.jpg" alt="영화를 영원히 추억하는 방법. CGV 포토티켓" /></a>
</div><!-- .sect-ad-benner  -->
<div class="cols-rank">
    <div class="col-rank-trailer">
        <h3>인기 트레일러</h3>
        <div class="sect-popular-trailer">
            <div id="ctl00_PlaceHolderContent_ucListFooter_wrap_info_trailer" class="wrap-info-trailer">
                <!-- 트레일러 이미지 -->
                <div class="box-image trailer">
                    <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="145228">
                        <span class="thumb-image">
                            <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/79747/79747145228_1024.JPG" alt="[스파이더맨: 홈 커밍]본 예고편-스파이더맨-홈 커밍" />
                            <span class="ico-play">영상보기</span>
                        </span>
                    </a>
                </div>
                <div class="box-image">
                    <a href="/movies/detail-view/?midx=79747">
                        <span class="thumb-image">
                            <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79747/79747_185.jpg" alt="[스파이더맨: 홈 커밍]본 예고편-스파이더맨-홈 커밍" />
                            <span class="ico-grade grade-none">미정</span>
                        </span>
                    </a>
                </div>
                <div class="box-contents">
                    <a href="/movies/detail-view/?midx=79747">
                        <strong class="title">스파이더맨: 홈 커밍</strong>
                    </a>
                    <span class="txt-info">
                        <em class="genre">액션,&nbsp;SF,&nbsp;어드벤처</em>
                        <span>
                            <i>2017.07.05</i>
                            <strong>개봉</strong>
                            <em class="dday">D-24</em>
                        </span>
                    </span>
                    <span class="screentype">
                        
                    </span>
                </div>
            </div>
            <ul>
            
                <li>
                    <div class="box-image">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="145253">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/79748/79748145253_1024.JPG" 
                                alt="[트랜스포머: 최후의 기사]메인 예고편-트랜스포머-최후의 기사" style="width:126px;height:71px;" />
                                <span class="ico-play">영상보기</span>
                            </span>
                        </a>
                    </div>
                    <div class="box-contents">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="145253">
                            <strong class="title">트랜스포머: 최후의 기사</strong>
                        </a>
                        <span class="txt-info">
                        <em class="genre">액션,&nbsp;SF,&nbsp;어드벤처</em>
                        <span>
                            <i>2017.06.21</i>
                            <strong>개봉</strong>
                            <em class="dday">D-10</em>
                        </span>
                    </span>
                    </div>
                </li>
            
                <li>
                    <div class="box-image">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="145179">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/79744/79744145179_1024.JPG" 
                                alt="[군함도]왜 군함도인가 코멘터리 예고편" style="width:126px;height:71px;" />
                                <span class="ico-play">영상보기</span>
                            </span>
                        </a>
                    </div>
                    <div class="box-contents">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="145179">
                            <strong class="title">군함도</strong>
                        </a>
                        <span class="txt-info">
                        <em class="genre">액션,&nbsp;드라마</em>
                        <span>
                            <i>2017.07</i>
                            <strong>개봉예정</strong>
                            
                        </span>
                    </span>
                    </div>
                </li>
            
                <li>
                    <div class="box-image">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="145166">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/79741/79741145166_1024.JPG" 
                                alt="[박열]메인 예고편-박열" style="width:126px;height:71px;" />
                                <span class="ico-play">영상보기</span>
                            </span>
                        </a>
                    </div>
                    <div class="box-contents">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="145166">
                            <strong class="title">박열</strong>
                        </a>
                        <span class="txt-info">
                        <em class="genre">드라마</em>
                        <span>
                            <i>2017.06.28</i>
                            <strong>개봉</strong>
                            <em class="dday">D-17</em>
                        </span>
                    </span>
                    </div>
                </li>
            
                <li>
                    <div class="box-image">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="145044">
                            <span class="thumb-image">
                                <img src="http://img.cgv.co.kr/Movie/Thumbnail/Trailer/79729/79729145044_1024.JPG" 
                                alt="[덩케르크]메인 예고편-덩케르크" style="width:126px;height:71px;" />
                                <span class="ico-play">영상보기</span>
                            </span>
                        </a>
                    </div>
                    <div class="box-contents">
                        <a href="#" title="새창" class="movie_player_popup" data-gallery-idx="145044">
                            <strong class="title">덩케르크</strong>
                        </a>
                        <span class="txt-info">
                        <em class="genre">액션,&nbsp;드라마,&nbsp;스릴러,&nbsp;전쟁</em>
                        <span>
                            <i>2017.07</i>
                            <strong>개봉예정</strong>
                            
                        </span>
                    </span>
                    </div>
                </li>
            
            </ul>
        </div><!-- .sect-popular-trailer -->
    </div><!-- .col-rank-trailer -->
    <div class="col-rank-search">
        <div class="searchrank">
            <h3>실시간 인기 검색어</h3>
            <ol>
            
                <li>
                    <a href="/search/?query=%eb%af%b8%ec%9d%b4%eb%9d%bc">1. <strong>미이라</strong></a>
                    <em>
                        2
                        <span class="up">상승</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%ec%95%85%eb%85%80">2. <strong>악녀</strong></a>
                    <em>
                        1
                        <span class="down">하락</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%eb%85%b8%eb%ac%b4%ed%98%84%ec%9e%85%eb%8b%88%eb%8b%a4">3. <strong>노무현입니다</strong></a>
                    <em>
                        1
                        <span class="up">상승</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%ea%b2%9f%ec%95%84%ec%9b%83">4. <strong>겟아웃</strong></a>
                    <em>
                        1
                        <span class="up">상승</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%eb%8c%80%eb%a6%bd%ea%b5%b0">5. <strong>대립군</strong></a>
                    <em>
                        3
                        <span class="down">하락</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%eb%b3%b4%ec%8a%a4%eb%b2%a0%ec%9d%b4%eb%b9%84">6. <strong>보스베이비</strong></a>
                    <em>
                        1
                        <span class="up">상승</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%ec%95%84%ec%9d%b4">7. <strong>아이</strong></a>
                    <em>
                        1
                        <span class="down">하락</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%ec%9b%90%eb%8d%94%ec%9a%b0%eb%a8%bc">8. <strong>원더우먼</strong></a>
                    <em>
                        2
                        <span class="up">상승</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%eb%b6%88%ed%95%9c%eb%8b%b9">9. <strong>불한당</strong></a>
                    <em>
                        1
                        <span class="down">하락</span>
                    </em>
                </li>
            
                <li>
                    <a href="/search/?query=%eb%85%b8%eb%ac%b4%ed%98%84">10. <strong>노무현</strong></a>
                    <em>
                        1
                        <span class="down">하락</span>
                    </em>
                </li>
            
            </ol>
            <p class="date">2017.06.11기준</p>
        </div>
    </div>
</div>
<!--
  2016-
- Fried : 0 ~69
- Good :  70 ~ 84
- Great : 85 ~ 100  
//-->
            <!--/ Contents End -->

		</div>
		<!-- /Contents Area -->
	</div>
	<!-- /Contaniner -->
	<!-- Footer -->
	<%@ include file="/module/bottom.jsp"%>
	<!-- /Footer -->

    <!-- Aside Banner :  -->
	<div id="ctl00_sect_person_right" class="sect-aside-banner" style="padding:0; margin:0; position:fixed; z-index:1;">
		<div class="aside-content-top">
			<div class="aside-content-btm">
				<a href="/theaters/"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_theater.gif" alt="CGV THEATER" /></a>
				<a href="/arthouse/"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_arthouse.gif" alt="CGV arthouse" /></a>
				<a href="/theaters/special/"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_special.gif" alt="CGV SPECIAL" /></a>
				<a href="http://phototicket.cgv.co.kr/" target="_blank"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_phototicket.gif" alt="CGV 포토티켓" /></a>
				<a href="/user/mycgv/reserve/" class="required-login" data-url="/user/mycgv/reserve/"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_ticket.gif" alt="CGV TICKET INFO" /></a>
				<a href="http://section.cgv.co.kr/discount/Special/discount/Default.aspx"><img src="http://img.cgv.co.kr/R2014/images/common/btn/btn_person_discount.gif" alt="CGV DISCOUNT INFO" /></a>
			</div>
		</div>
		<div class="btn-top">
			<a href="#" onclick="scrollTo(0,0);return false;"><span>최상단으로 이동</span></a>
		</div>
	</div>
	<!-- //Aside Banner -->
    
</div>



<!-- End Google Tag Manager -->

<!-- 비즈스프링 통계태그 -->

</body>
</html>