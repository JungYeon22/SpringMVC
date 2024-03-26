$(function(){
    $.ajax({
        type: 'post'
        , url: '/user/getUploadList'
        , dataType: 'json'
        , success: function(data){
            console.log(JSON.stringify(data));
            $.each(data, function (index, items){
                /*$('<tr/>').append($('<td/>', {
                            align: 'center'
                            , text: items.seq
                            })).append($('<td/>', {
                            align: 'center'
                            , text: items.imageOriginalName
                                }).append($('<img/>', {
                                    src: '../storage/' + items.imageOriginalName       // 가상 폴더의 위치를 잡아준다.
                                    , style: 'width: 50px; height: 50px;'
                                })))
                            .append($('<td/>', {
                            align: 'center'
                            , text: items.imageName
                })).appendTo($('#uploadListTable'));*/

                // 이미지는 NCP Storage에서 가져온다.
                var result = `<tr>`
                    + `<td align="center">`+ items.seq +`</td>`
                    + `<td align="center">`
                    + `<a href="/user/uploadUpdateForm?seq=`+ items.seq +`"><img src="https://kr.object.ncloudstorage.com/bitcamp-6th-bucket-94/storage/`+items.imageFileName+`" style="width: 50px"></a>`
                    +`</td>`
                    + `<td align="center">`+items.imageName+`</td>`
                    + `</tr>`
                $('#uploadListTable').append(result);
            })
        }
        , error: function(e){
            console.log(e);
        }
    });
})