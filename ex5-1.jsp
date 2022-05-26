<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<B>2차원 배열로 성적처리</B><Br>
<%
int num[][] ={{90,90,90},{80,80,80}};
int total[] = {0,0};
float avg[] = new float[2];

for(int i = 0; i < num.length; i++){			//모든 행 탐색
	for(int j = 0; j < num[i].length; j++){			//모든 칸 탐색
		total[i] += num[i][j];			//해당 줄의 모든 칸에 들어있는 값을 누적 합계
	}					//total[0] = 0번 줄의 총점, total[1] = 1번 줄의 총점
	avg[i] = total[i] / 3;
}

			//성적처리 결과 출력 - 학생별 점수, 총점, 평균 => 화면표시
for(int i = 0;i < 2; i++){
	for(int j = 0; j < 3; j++){
		%>
		<%=num[i][j] %>&nbsp;&nbsp;&nbsp; 
		<!-- 배열에 들어있는 데이터를 화면에 출력, 2번째 for문에 따른 반복 -->
<%		
	}
%>
<%=total[i] %>&nbsp;&nbsp;&nbsp;<%=avg[i] %><Br>
			<!-- total 배열에 들어있는 각 중의 총점, avg 배열에 들어있는 각줄의 평균 
				첫 번째 for문에 따른 반복 2회-->
<%
}
%>
</body>
</html>