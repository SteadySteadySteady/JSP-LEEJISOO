<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <title>Document</title>
</head>
<body>
        <form method="get" action="agreePro.jsp" >
            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDEyMTNfMjAg%2FMDAxNjA3ODQzMTg5MTg0.OLVO2AxKLUhXdip-ioq_XvLT11oLs7X5OktIisa4BXYg.EXK8Irlc7QHbIlV6O3VO73Ove3hO4YocYfkrpNospdQg.JPEG.yoonpd71%2FNISI20201211_0000654683_web_20201211162103_20201213152506274.jpg&type=sc960_832" alt="NAVER">
            <input type="checkbox" id="checkBoxAll" onclick="checkAll(form)"><span>네이버 이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택),
                프로모션 정보 수신(선택)에 모두 동의합니다.</span><br>
            <ul>
                <li><input type="checkbox" onclick="check(form)" id="checkBox" name="necessary"><span> 네이버 이용약관 동의</span>(필수)<span></span></li>
                <li><input type="checkbox" onclick="check(form)" id="checkBox" name="necessary"><span> 개인정보 수집 및 이용 동의</span><span>(필수)</span></li>
                <li><input type="checkbox" onclick="check(form)" id="checkBox"><span> 위치정보 이용약관 동의(선택)</span></li>
                <li><input type="checkbox" onclick="check(form)" id="checkBox"><span> 프로모션 정보 수신 동의(선택)</span></li>
            </ul>
            <span><a href="https://www.naver.com/">취소</a></span>
            <span><input type="submit" onclick="checkVal(form)"></span>
            <span id="alertSpan">네이버 이용약관과 개인정보 수집 및 이용에 대한 안내 모두 동의해주세요.</span>
        </form>
        <script>
            document.querySelector('form').addEventListener('submit', e=>{
                e.preventDefault();
            })
            function check(form){
                let cnt = 0;
                for(let i = 0; i < form.checkBox.length; i += 1){
                    if(form.checkBox[i].checked === true)
                    cnt += 1;
                }
                if(cnt == 4){
                    document.querySelector('#checkBoxAll').checked = true;
                } 
                else {
                    document.querySelector('#checkBoxAll').checked = false;
                }
            }
            
            function checkVal(form){
                let cnt = 0;
                for(let i = 0; i < form.necessary.length; i += 1){
                    if(form.necessary[i].checked === true)
                    cnt += 1;
                }
                
                if(cnt == 2){
                    form.submit();
                }
                else{
                    hide = false;
                    $('#alertSpan').show();
                }
            }
            
            function checkAll(form){
                let cnt = 0;
                for(let i = 0; i < form.checkBox.length; i += 1){
                    if(form.checkBox[i].checked === true)
                    cnt += 1;
                }
                
                if(cnt < 4)
                for(let i = 0; i < form.checkBox.length; i += 1)
                form.checkBox[i].checked = true;
                else
                for(let i = 0; i < form.checkBox.length; i += 1)
                form.checkBox[i].checked = false;
            }
            let hide = true;
            
            if(hide === true){
                $('#alertSpan').hide();
            }
            </script>
</body>
</html>