
			function time() {
				
				var date =  new Date();
				year = date.getFullYear();
				month = date.getMonth() + 1;
				day = date.getDate();
				hours = date.getHours();
				minutes = date.getMinutes();
				seconds = date.getSeconds();
				
				document.getElementById("time").innerHTML = year + "年" + month + "月" + day + "日" + "\t" + hours + ":" + minutes + ":" + seconds + "\t";
				
			};
			setInterval("time()", 1000);
