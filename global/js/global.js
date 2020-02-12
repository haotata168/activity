var imgUrl = "http://localhost:8081/vip/";
//var imgUrl = "http://image.caijingmobile.com/newsdata/vip/";
//var apiUrl = "http://news.caijingmobile.com/activity/activity/"
var apiUrl = "http://localhost/activity/"
/*
 * 将一个数组分成几个同等长度的数组
 * array[分割的原数组]
 * size[每个子数组的长度]
 */
 function sliceArray(array, size) {
        var result = [];
        for (var x = 0; x < Math.ceil(array.length / size); x++) {
            var start = x * size;
            var end = start + size;
            result.push(array.slice(start, end));
        }
        return result;
     }; 
function isEmail(str){
    var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
    return reg.test(str);
}