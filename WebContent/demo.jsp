<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="skin/layer.css" media="all">
 <link rel="stylesheet" href="skin/layer.ext.css" media="all">
 <script src="js/jquery-1.8.0.min.js"></script>
 <script src="js/layer.js"></script>
 <script src="js/layer.ext.js"></script>
</head>
<script>    
       
  function func1() {
        layer.alert('内容');
    }
  function func2() {
      layer.alert('内容', {
          icon: 1,
          skin: 'layer-ext-moon' //该皮肤由layer.seaning.com友情扩展。关于皮肤的扩展规则，去这里查阅
      });
  }
  function func3() {
      //询问框
      layer.confirm('您是如何看待前端开发？', {
          btn: ['重要','奇葩'] //按钮
      }, function(){
          layer.msg('的确很重要', {icon: 1});
      }, function(){
          layer.msg('也可以这样', {
              time: 2000, //2s后自动关闭
              btn: ['明白了', '知道了']
          });
      });
  }
  function func4() {
      //提示层
      layer.msg('玩命提示中');
  }
  function func5() {
      //墨绿深蓝风
      layer.alert('墨绿风格，点击确认看深蓝', {
          skin: 'layui-layer-molv' //样式类名
          ,closeBtn: 0
      }, function(){
          layer.alert('偶吧深蓝style', {
              skin: 'layui-layer-lan'
              ,closeBtn: 0
              ,shift: 4 //动画类型
          });
      });
  }
  function func6() {
      //捕获页
      layer.open({
          type: 1,
          shade: false,
          title: false, //不显示标题
          content: $('.layer_notice'), //捕获的元素
          cancel: function(index){
              layer.close(index);
              this.content.show();
              layer.msg('捕获就是从页面已经存在的元素上，包裹layer的结构', {time: 2000, icon:6});
          }
      });
  }

  function func7() {
      //页面层
      layer.open({
          type: 1,
          skin: 'layui-layer-rim', //加上边框
          area: ['420px', '240px'], //宽高
          content: 'html内容'
      });
  }

  function func8() {
      //自定页
      layer.open({
          type: 1,
          skin: 'layui-layer-demo', //样式类名
          closeBtn: 0, //不显示关闭按钮
          shift: 2,
          area: ['420px', '240px'], //宽高
          shadeClose: true, //开启遮罩关闭
          content: '内容'
      });
  }

  function func9() {
      //tips层
      layer.tips('Hi，我是tips', $("#tips"));
  }

  function func10() {
      //iframe层
      layer.open({
          type: 2,
          title: 'layer mobile页',
          shadeClose: true,
          shade: 0.8,
          area: ['380px', '90%'],
          content: 'http://m.baidu.com' //iframe的url
      }); 
  }

  function func11() {
      //iframe窗
      layer.open({
          type: 2,
          title: false,
          closeBtn: 0, //不显示关闭按钮
          shade: [0],
          area: ['340px', '215px'],
          offset: 'auto', //右下角弹出
          time: 2000, //2秒后自动关闭
          shift: 2,
          content: ['guodu.jsp', 'no'], //iframe的url，no代表不显示滚动条
          end: function(){ //此处用于演示
              layer.open({
                  type: 2,
                  title: '百度一下，你就知道',
                  shadeClose: true,
                  shade: false,
                  maxmin: true, //开启最大化最小化按钮
                  area: ['1150px', '650px'],
                  content: 'http://www.baidu.com'
              });
          }
      });
  }

  function func12() {
      //加载层
      var index = layer.load(0, {shade: false}); //0代表加载的风格，支持0-2
  }

  function func13() {
      //loading层
      var index = layer.load(1, {
          shade: [0.1,'#fff'] //0.1透明度的白色背景
      });
  }

  function func14() {
      //小tips
      layer.tips('我是另外一个tips，只不过我长得跟之前那位稍有些不一样。', $('#tips2'), {
          tips: [1, '#3595CC'],
          time: 4000
      });
  }

  function func15() {

      //prompt层
      layer.prompt({
          title: '输入任何口令，并确认',
          formType: 1 //prompt风格，支持0-2
      }, function(pass){
          layer.prompt({title: '随便写点啥，并确认', formType: 2}, function(text){
              layer.msg('演示完毕！您的口令：'+ pass +' 您最后写下了：'+ text);
          });
      });
  }

  function func16() {
      //tab层
      layer.tab({
          area: ['600px', '300px'],
          tab: [{
              title: 'TAB1', 
              content: '内容1'
          }, {
              title: 'TAB2', 
              content: '内容2'
          }, {
              title: 'TAB3', 
              content: '内容3'
          }]
      });
  }
  function func17(){
  layer.open({
	  type: 1
	  ,offset: 't' //具体配置参考：offset参数项
	  ,content: '<div style="padding: 20px 80px;">所显示内容</div>'
	  ,btn: '关闭全部'
	  ,btnAlign: 'c' //按钮居中
	  ,shade: 0 //不显示遮罩
	  ,yes: function(){
	    layer.closeAll();
	  }
	});
  
  }
  function openpage() {
	 
	  layer.config({
        extend: 'skin/layer.ext.css'  //加载拓展的js
     }) ; 
      //页面一打开就执行，放入ready是为了layer所需配件（css、扩展模块）加载完毕
      //layer.ready(function() {
          //官网欢迎页
          layer.open({
              type: 2,
              skin: 'layui-layer-lan',
              title: 'layer弹层组件',
              fix: false,
              shadeClose: true,
              maxmin: true,
              area: ['1000px', '500px'],
              content: 'https://www.baidu.com'
          });
          layer.msg('欢迎使用layer');
    // }); 
  }
  
  
  function func21(){
	  
			 
			 layer.config({
		         extend: 'skin/layer.ext.css'  //加载拓展的js
		         
		     }) ; 
			
			 layer.ready(function(){
				 
					 layer.msg('你好');
				 })
			 
             layer.alert('内筒');
		      
  }
    
 function func18(){
  
  layer.open({
	  type: 1
	  ,title: false //不显示标题栏
	  ,closeBtn: false
	  ,area: '300px;'
	  ,shade: 0.8
	  ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
	  ,resize: false
	  ,btn: ['火速围观', '残忍拒绝']
	  ,btnAlign: 'c'
	  ,moveType: 1 //拖拽模式，0或者1
	  ,content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">内容<br>内容</div>'
	  ,success: function(layero){
	    var btn = layero.find('.layui-layer-btn');
	    btn.find('.layui-layer-btn0').attr({
	      href: 'http://www.layui.com/'
	      ,target: '_blank'
	    });
	  }
	});
 }
 
 function func19(){
	 
	//配置一个透明的询问框
	 layer.msg('大部分参数都是可以公用的<br>合理搭配，展示不一样的风格', {
	   time: 20000, //20s后自动关闭
	   btn: ['明白了', '知道了', '哦']
	 });
 }
 
 function func20(){
	//多窗口模式，层叠置顶
	 layer.open({
	   type: 2 //此处以iframe举例
	   ,title: '当你选择该窗体时，即会在最顶端'
	   ,area: ['390px', '330px']
	   ,shade: 0
	   ,offset: [ //为了演示，随机坐标
	     Math.random()*($(window).height()-300)
	     ,Math.random()*($(window).width()-390)
	   ]
	   ,maxmin: true
	   ,content: 'index.jsp'
	   ,btn: ['继续弹出', '全部关闭'] //只是为了演示
	   ,yes: function(){
	     $(that).click(); //此处只是为了演示，实际使用可以剔除
	   }
	   ,btn2: function(){
	     layer.closeAll();
	   }
	   
	   ,zIndex: layer.zIndex //重点1
	   ,success: function(layero){
	     layer.setTop(layero); //重点2
	   }
	 });
 }
</script>
<body>
    <div class="layer_notice">hello,i'm layer!</div>
    
    <button id="func1" onclick="func1();">初体验</button>
    <button id="func2" onclick="func2();">皮肤</button>
    <button id="func3" onclick="func3();">询问框</button>
    <button id="func4" onclick="func4();">提示层</button>
    <button id="func5" onclick="func5();">蓝色风格</button>
    <button id="func6" onclick="func6();">捕捉页</button>
    <button id="func7" onclick="func7();">页面层</button>
    <button id="func8" onclick="func8();">自定义</button>
    <button id="func9" onclick="func9();">tips层</button>
    <button id="func10" onclick="func10();">iframe层</button>
    <button id="func11" onclick="func11();">iframe窗</button>
    <button id="func12" onclick="func12();">加载层</button>
    <button id="func13" onclick="func13();">loading层</button>
    <button id="func14" onclick="func14();">小tips</button>
    <button id="func16" onclick="func16();">tab层</button>
    <button id="func17" onclick="func17();">边缘弹出</button>
    <button id="func18" onclick="func18();">示范一个公告层</button>
    <button id="func19" onclick="func19();">透明询问框</button>
    <button id="func20" onclick="func20();">多窗口模式，层叠置顶</button>
    <button id="func21" onclick="func21();">拓展的</button>  
    <button id="openpage" onclick="openpage();">openpage</button>
    <button id="tips">tips</button>
    <button id="tips2">tips2</button>
    
</body>
</html>