$(function(){
    //seq에 해당하는 데이터 가져오기
    $.ajax({
        type: 'post'
        , url: '/user/getUpload'
        , data: 'seq=' + $('#seq').val()
        , dataType: 'json'
        , success: function (data){
            console.log(JSON.stringify(data));

            $('#imageName').val(data.imageName);
            $('#imageContent').val(data.imageContent);
            $('#imageFileName').val(data.imageFileName);
        }
        , error: function (e){
            console.log(e);
        }
    })

    $('#deleteBtn').click(function (){
        if(confirm("삭제 하시겠습니까?"))
            $.post({
                url: '/user/uploadDelete'
                , data: 'seq='+ $('#seq').val() + '&imageFileName='+ $('#imageFileName').val()
                , success: function (){
                    alert('회원정보 삭제 완료')
                    location.href='/user/uploadList'
                }
                , error: function (e){
                    console.log(e);
                }
            })
    })


})


