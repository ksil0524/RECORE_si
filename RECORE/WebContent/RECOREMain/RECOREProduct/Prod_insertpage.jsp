<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>RECORE &mdash; ENROLL</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900"> 
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/fonts/icomoon/style.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/magnific-popup.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/jquery-ui.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/bootstrap-datepicker.css">
    
    
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/fonts/flaticon/font/flaticon.css">
  
    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/aos.css">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/RECOREMain/css/style.css">


   <!-- insert 폼 css 적용 -->
   <link rel="icon" href="<%=request.getContextPath()%>/images/recorefavi.png">
    
    <link href="<%=request.getContextPath() %>/RECOREMain/RECOREIssue/css/main.css" rel="stylesheet" media="all">
    
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
       <script type="text/javascript">
   
      $(function(){
         
         var count = 1;
         
         <% int opcount = 1;   %>

         
         $("#plusOp").click(function(){

            count++;
            <% opcount++; %>
            
            var form_row = $("<div class='form-row'>").html(
                  "<div class='name' style='font-size: 15px; color: gray;'>옵션"+count+"</div>"
                  +"<div class='value'> <div class='input-group' style='margin-top: 11px;'>"
                  +"COLOR <input class='input--style-6' type='text' name='prod_color"+count+"' placeholder='color' required='required'>"
                  +"</div></div>"
                       +"<div class='name' style='font-size: 15px; color: gray;'></div>"
                  +"<div class='value'> <div class='input-group' style='margin-top: 11px;'>"
                  +"SIZE <input class='input--style-6' type='text' name='prod_size"+count+"' placeholder='size'  required='required'>"
                       +"</div></div>"
                       +"<div class='name' style='font-size: 15px; color: gray;'></div>"
                  +"<div class='value'> <div class='input-group' style='margin-top: 11px;'>"
                  +"재고 <input class='input--style-6' type='number' name='prod_stock"+count+"' value='0'  required='required'>"
                       +"</div></div>");
            

            $(".card-body").append(form_row);
            $("#opcount").attr("value",count);
            
            
         });
            
         
         
      })
         
      
   </script>
    

  </head>
  <body>
  
  
   <!-- header -->
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> 
    
    
    <div class="site-navbar-wrap" style="background-color: #a9d0d0; position:relative;">
      <div class="site-navbar-top">
        <div class="container py-3">
       
        <!--@@ 로고 위치 @@-->
        <br>
        <div style = "text-align: center;"><a href = "<%=request.getContextPath()%>/RECOREMain/index.html">
        <img alt="" src = "<%=request.getContextPath()%>/images/logo2.png"></a></div>
        
          <div class="row align-items-center">
            <div class="col-6">
            </div>
            <div class="col-6">
              <div class="d-flex ml-auto" style = "position:relative; left: 100px;" >
               <form id="search" method="get" action="#" class="d-flex align-items-center ml-auto mr-4">
                 </form>
                 
                 <!-- 로그인 안되어있을 때  -->
                <c:if test="${empty vo }">
                <a href="<%=request.getContextPath()%>/Account_Controller.do?command=loginpage" class="d-flex align-items-center">
                 <span class="d-none d-md-inline-block" style="color:black;">로그인 &nbsp;&nbsp;</span>
                 </a>
                  <a href="<%=request.getContextPath()%>/Account_Controller.do?command=signuppage" class="d-flex align-items-center">
                  <span class="d-none d-md-inline-block" style="color:black;">회원가입 &nbsp;&nbsp;</span></a>
                  <br>
                  <a href="<%=request.getContextPath()%>/Account_Controller.do?command=loginpage" class="d-flex align-items-center">
                  <span class="d-none d-md-inline-block" style="color:black;">마이페이지&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
                 <a href = "<%=request.getContextPath()%>/Account_Controller.do?command=loginpage">
                  <img class="d-none d-md-inline-block" src = "<%=request.getContextPath()%>/images/cart3.png"/></a>
                 </c:if>
                 
                 <!-- 로그인 되어있을 때 -->
                  <c:if test="${!empty vo }">
                <a href="<%=request.getContextPath()%>/Account_Controller.do?command=logout" class="d-flex align-items-center">
                <span class="d-none d-md-inline-block" style="color:black;">로그아웃&nbsp;&nbsp;</span></a>
                <a href="<%=request.getContextPath()%>/mypage.do?command=main" class="d-flex align-items-center">
                <span class="d-none d-md-inline-block" style="color:black;">마이페이지&nbsp;&nbsp;&nbsp;</span></a>
                <a href = "<%=request.getContextPath()%>/mypage.do?command=cartlist">
                  <img class="d-none d-md-inline-block" src = "<%=request.getContextPath()%>/images/cart3.png"/></a>
               </c:if>
                 
                 
                 
              </div>
            </div>
          </div>
        </div>
      </div>
      
      
      
      <div class="site-navbar" >
        <div class="container py-1">
          <div class="row align-items-center">
            <div class="col-2">
            </div>
            <div class="col-10">
              <nav class="site-navigation text-right" role="navigation">
                <div class="container">
                  <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

                  <ul class="site-menu js-clone-nav d-none d-lg-block" style = "position:relative; z-index: 1; left: 110px;">
                    <li class="has-children">
                      <a href="<%=request.getContextPath()%>/funding.do?command=selectAllFunding&pageno=1" style="color:black;">Funding</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="<%=request.getContextPath()%>/funding.do?command=selectAllFunding&pageno=1">조회</a></li>
                        <li><a href="<%=request.getContextPath()%>/funding.do?command=createfundingpage">등록</a></li>
                      </ul>
                    </li>
                    <li class="has-children">
                    
                      <a href= "<%=request.getContextPath()%>/Product.do?command=ProdSelectAll&pageno=1" style= "color:black;">Product</a>
                      <ul class="dropdown arrow-top">
                        <li><a href="<%=request.getContextPath()%>/Product.do?command=ChildSelectAll&catdno=6&pageno=1">Bag/Acc</a></li>
                        <li class = "has-children"><a href="<%=request.getContextPath()%>/Product.do?command=ParentSelectAll&catdid=4&pageno=1">Clothing</a>
                           <ul class = "dropdown arrow-down">
                        <li><a href = "<%=request.getContextPath()%>/Product.do?command=ChildSelectAll&catdno=7&pageno=1">Outer</a></li>                           
                        <li><a href = "<%=request.getContextPath()%>/Product.do?command=ChildSelectAll&catdno=8&pageno=1">Top</a></li>                           
                        <li><a href = "<%=request.getContextPath()%>/Product.do?command=ChildSelectAll&catdno=9&pageno=1">Bottom</a></li>                           
                           </ul>
                        </li>
                        <li><a href="<%=request.getContextPath()%>/Product.do?command=ChildSelectAll&catdno=10&pageno=1">Wallet</a></li>
                        <li class = "has-children"><a href="<%=request.getContextPath()%>/Product.do?command=ParentSelectAll&catdid=6&pageno=1">Life</a>
                           <ul class = "dropdown arrow-down">
                        <li><a href = "<%=request.getContextPath()%>/Product.do?command=ChildSelectAll&catdno=11&pageno=1">Supply</a></li>                           
                        <li><a href = "<%=request.getContextPath()%>/Product.do?command=ChildSelectAll&catdno=12&pageno=1">Home</a></li>                           
                           </ul>
                        </li>
                      </ul>
                    </li>
                    <li  class="has-children"><a href="<%=request.getContextPath()%>/issue.do?command=selectAllNews&pageno=1" style="color:black;">Issue</a>
                       <ul class="dropdown arrow-top">
                        <li><a href="<%=request.getContextPath()%>/issue.do?command=selectAllNews&pageno=1">News</a></li>
                        <li><a href="<%=request.getContextPath()%>/issue.do?command=selectAllExhibition&pageno=1">Exhibition</a></li>
                      </ul>
                    </li>
                    <li class="has-children"><a href="<%=request.getContextPath()%>/qna.do?command=qna_list&catd=all" style="color:black;">Community</a>
                   <ul class="dropdown arrow-top">
                   <li><a href="<%=request.getContextPath()%>/qna.do?command=qna_list&catd=all">QnA</a></li>
                   <li><a href="<%=request.getContextPath()%>/qna.do?command=review_list&catd=all">Review</a></li>
                   </ul>
               </li>
            
                  </ul>
                </div>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
   

     <script type="text/javascript">
         
        $(function(){
           
        $("#title").blur(function(){
           
              var chkor = /^[~!@#$%^&*()_+|<>?:{}0-9가-힣\s]+$/;           
           
           var title = $("#title").val();
           
           if(chkor.test(title)){
              
              $("#titlean").css({"display":"none","padding-left": "5px","color": "red"});
             
           }else{
              
              $("#titlean").css({"display":"block","padding-left": "5px","color": "red"});
              $("#title").val("");
                                        
           }
        });
        });
        
                     
                
     </script>
   
    <div class="page-wrapper p-t-100 p-b-50" style="background-color: white;">
        <div class="wrapper wrapper--w900">
            <div class="card card-6" style="border:0px;">
            
                <form action="../../Product.do?command=insertproduct" method="post" enctype="multipart/form-data" id="formform">
                <div class="card-heading" style="border:0px;">
                    <h2 class="title" style="color:#a0d9d9;">
                       &nbsp;&nbsp;&nbsp;상품 등록
                    </h2>
                </div>
                <div class="card-body" style="border:0px;">
                        <div class="form-row">
                            <div class="name">카테고리</div>
                            <div class="value">
                        <select class="input--style-6" name="prod_catd" style="margin-top: 11px;" >
                                      <option value="6">BAG/ACC</option>
                                      <option value="7">OUTER</option>
                                      <option value="8">TOP</option>
                                      <option value="9">BOTTOM</option>
                                      <option value="10">WALLET</option>
                                      <option value="11">OFFICE SUPPLY</option>
                                      <option value="12">HOME</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">상품명</div>
                            <div class="value">
                                <div class="input-group">
                                    <input id="title" class="input--style-6" type="text" name="prod_name" placeholder="상품명" required="required" maxlength="50">
                                  <p id= "titlean" style="padding-left: 5px; display:none; color: red">현재 입력된 상품명은 사용할 수 없습니다.</p>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">브랜드</div>
                            <div class="value">
                                <div class="input-group">
                                    <textarea class="input--style-6" name="prod_brand" placeholder="브랜드명" required="required" maxlength="20"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">가격</div>
                            <div class="value">
                                <div class="input-group">
                                   <input id="price" type="number" class="input--style-6" name="prod_price" value="0"  required="required" max="9999999">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">할인여부</div>
                            <div class="value">
                                <div class="input-group">
                                   <select class="input--style-6" name="prod_dc_yn" style="margin-top: 11px;" >
                                      <option value="N">N</option>
                                      <option value="Y">Y</option>
                                   </select>
                                </div>
                            </div>
                        </div>
                                    
                        <div class="form-row">
                            <div class="name">할인율</div>
                            <div class="value">
                                <div class="input-group">
                                   <input type="number" class="input--style-6" name="prod_dc" value="0" min="0" max="100" required="required">
                                </div>
                            </div>
                        </div>    
                                           
                        <div class="form-row">
                            <div class="name">상품설명</div>
                            <div class="value">
                                <div class="input-group">
                                    <textarea class="input--style-6" name="prod_note" placeholder="상품설명" required="required" maxlength="1000"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">대표이미지</div>
                            <div class="value">
                                <div class="input-group">
                                    <input type="file" name="prod_front_img" accept=".png" required="required">
                                     <div class="label--desc">상풍 대표 이미지의 규격은 700px x 700px 입니다.</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">썸네일이미지</div>
                            <div class="value">
                                <div class="input-group">
                                    <input type="file" name="prod_th_img" accept=".png" required="required">
                                   <div class="label--desc">상품 썸네일 이미지의 규격은 700px x 700px 입니다.</div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">내용이미지</div>
                            <div class="value">
                                <div class="input-group">
                                    <input type="file" name="prod_content" accept=".png" required="required">
                                </div>
                                <div class="label--desc">상품 내용이미지의 규격은 900px x * 내외 입니다.</div>
                                <div class="label--desc">업로드 하는 사진의 확장자는 .png 이어야 하며 사진의 크기는 10MB까지 가능합니다.</div>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name" style="font-size: 25px; color: gray;">옵션관리</div>
                            <button id="plusOp" class="" type="button"  style="background: #a9d0d0; line-height: 20px;
                         padding: 0 7px; margin-top: 20px;">+</button>
                            
                        </div>
                        <input id="opcount" type="hidden" name="opcount" value="<%=opcount %>">
                        <div class="form-row">
                            <div class="name" style="font-size: 15px; color: gray;">옵션1</div>
                            <div class="value">
                                <div class="input-group" style="margin-top: 11px;">
                                       COLOR <input class="input--style-6" type="text" name="prod_color1" placeholder="color" required="required">
                                </div>
                            </div>
                            <div class="name" style="font-size: 15px; color: gray;"></div>
                            <div class="value">
                                <div class="input-group" style="margin-top: 11px;">
                                       SIZE <input class="input--style-6" type="text" name="prod_size1" placeholder="size" required="required">
                                </div>
                            </div>
                            <div class="name" style="font-size: 15px; color: gray;"></div>
                            <div class="value">
                                <div class="input-group" style="margin-top: 11px;">
                                       재고 <input class="input--style-6" type="number" name="prod_stock1" value="0" required="required">
                                </div>
                            </div>
                        </div>
      
                </div>
                <div class="card-footer" style="border:0px; text-align: right;">
                    <button class="btn btn--radius-2 btn--blue-2" type="submit"">작성 완료</button>&nbsp;&nbsp;
                    <button class="btn btn--radius-2 btn--blue-2" type="button" onclick="location.href='<%=request.getContextPath()%>/mypage.do?command=main'">돌아가기</button>                </div>
                </form>
            </div>
        </div>
    </div>
   

   <!-- footer -->
   <%@ include file="/footer.jsp" %>       



  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery-3.3.1.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery-ui.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/popper.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/bootstrap.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/owl.carousel.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery.stellar.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery.countdown.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/jquery.magnific-popup.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/bootstrap-datepicker.min.js"></script>
  <script src="<%=request.getContextPath() %>/RECOREMain/js/aos.js"></script>

  <script src="<%=request.getContextPath() %>/RECOREMain/js/main.js"></script>
    
  </body>
</html>