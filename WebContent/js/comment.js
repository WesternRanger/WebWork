window.onload = function(){
	var textarea = document.getElementById("comment");
    var fri_mine = document.getElementById("fri-mine");
    var word = document.getElementById("word");
    var sub = document.getElementById("sub");
    var commBtn = document.getElementById("commBtn");
    commBtn.style.display = 'none';
    textarea.onfocus = function() {
        this.style.height = "80px";
        commBtn.style.display = 'block';
    }
    textarea.onblur = function() {
        var me = this;
        var timer = setTimeout(function() {
            me.style.height = "26px";
            me.value = '我也说一句';
            commBtn.style.display = 'none';
        }, 400);
        //                        this.style.height = "26px";
        //                        commBtn.style.display = 'none';
    }
    textarea.onkeyup = function() {
        var len = this.value.length;

        if (len == 0) {
            sub.style.background = '#439bf3';
        } else {
            sub.style.background = '#fbd908';
        }
        word.innerHTML = len + '/140';
    }
    sub.onclick = function() {
        var parli = document.getElementById("comment-line");
        var li = document.createElement("li");
        var html = '<img src="mainPageImg/2.jpg">' + '<span>'
                + textarea.value + '</span>';
        li.innerHTML = html;
        parli.appendChild(li);
    }
}
