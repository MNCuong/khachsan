<?php
     include '../config.php';
    $msg = "";
    if(isset($_POST['upload'])){
        
        $room_type = $_POST['room-type'];
        $room_size = $_POST['room-size'];
        $room_des = $_POST['room-des'];
        $room_price = $_POST['room-price'];
        $room_amount_people = $_POST['room-amount-people'];
    //hình chính
        $filename = $_FILES["uploadfile"]["name"];
        $tempname = $_FILES["uploadfile"]["tmp_name"];    
        $folder = "../images/".$filename;
              
       
    //hình thêm 1  
        $filename1 = $_FILES["uploadfile1"]["name"];
        $tempname1 = $_FILES["uploadfile1"]["tmp_name"];    
        $folder1 = "../images/".$filename1;
                    
        
    //hình thêm 2
        $filename2 = $_FILES["uploadfile2"]["name"];
        $tempname2 = $_FILES["uploadfile2"]["tmp_name"];    
        $folder2 = "../images/".$filename2;
              
        
    //hình thêm 3
        $filename3 = $_FILES["uploadfile3"]["name"];
        $tempname3 = $_FILES["uploadfile3"]["tmp_name"];    
        $folder3 = "../images/".$filename3;
              
        

       

        $sql = "INSERT INTO tb_rooms(room_type, room_size, room_description, room_price, room_amount_people, room_image,room_image1,room_image2,room_image3 ) 
                VALUES ('$room_type','$room_size','$room_des','$room_price', '$room_amount_people','$filename','$filename1','$filename2','$filename3');";
                // echo $sql;
        $result = mysqli_query($conn,$sql);
        
      
        header ('Location: danhsachphong.php');

    }

    ?>
