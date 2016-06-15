function bname(name,id,message){
		if(name==""){
			$(id).next("span").remove();//移除
			$(id).after("<span style='color:red;'>"+message+"</span>")
		}
		else{
			$(id).next("span").remove();
		}
}

function bphone(mobile,id){
		if(!/^(13[0-9]|14[0-9]|15[0-9]|17[0-9]|18[0-9])\d{8}$/i.test(mobile)){
			$(id).next("span").remove();
			$(id).after("<span style='color:red;'>手机号无效</span>")
		}
		else{
			$(id).next("span").remove();
		}}