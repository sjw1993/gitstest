<?php
	
	//获取页面传递的数据
//	$username=$_POST['username'];
//	$password=$_POST['password'];
	//链接数据库
	$db = new mysqli('localhost','root','root','db_hotel');
	//创建查询语句
	$sql = 'select * from customer';
	//执行查询语句
	$data = $db->query($sql);
	
	$aData = array();
	//循环遍历数据库数据
	while($oData=$data->fetch_assoc()){
		array_push($aData,$oData);
	}
	echo json_encode($aData);

	
?>