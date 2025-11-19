<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 3: Đọc tham số</title>
</head>
<body>

	<h1>Đăng Ký</h1>
	
    <form action="" method="post">
        
        <div class="input-row">
            <label for="username">Tên đăng nhập:</label>
            <input type="text" id="username" name="username">
        </div><br>

        <div class="input-row">
            <label for="password">Mật khẩu:</label>
            <input type="password" id="password" name="password"> 
        </div> <br>
        
        <div>
            <label>Giới tính:</label>
            <input type="radio" id="male" name="gender" value="Nam"> 
            <label for="male" style="width: auto;">Nam</label>
            
            <input type="radio" id="female" name="gender" value="Nữ">
            <label for="female" style="width: auto;">Nữ</label>
        </div><br>
        
        <div>
        	<label>Tình trạng:</label>
            <input type="checkbox" id="married" name="married"> 
            <label for="married" style="width: auto;">Đã có gia đình?</label>
        </div><br>

        <div>
            <label for="country">Quốc tịch:</label>
            <select id="country" name="country">
                <option value="Vietnam">Việt Nam</option>
                <option value="United States">United States</option>
                <option value="China">China</option>
                <option value="Japan">Japan</option>
                <option value="Other">Khác</option>
            </select>
        </div> <br>
        
        <div>
            <label>Sở thích:</label>
            <input type="checkbox" id="read" name="hobby" value="Đọc sách">
            <label for="read" style="width: auto;">Đọc sách</label>
            
            <input type="checkbox" id="travel" name="hobby" value="Du lịch">
            <label for="travel" style="width: auto;">Du lịch</label>
            
            <input type="checkbox" id="music" name="hobby" value="Âm nhạc">
            <label for="music" style="width: auto;">Âm nhạc</label>
            
            <input type="checkbox" id="walk" name="hobby" value="Âm nhạc">
            <label for="walk" style="width: auto;">Đi bộ</label>
            
            <input type="checkbox" id="other_hobby" name="hobby" value="Khác">
            <label for="other_hobby" style="width: auto;">Khác</label>
        </div><br>
        
        <div>
            <textarea id="note" name="note" rows="3" cols="40" class="full-width-input"></textarea>
        </div> <br>

        <div>
            <button type="submit">Đăng ký</button>
        </div>
        
    </form>
</body>
</html>