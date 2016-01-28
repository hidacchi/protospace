$(document).on("ready page:load",function(){
  $(function() {
    $('#upload-main input:file').uploadThumbs({
        position : "#upload-main"
    });
    $('#upload-sub1 input:file').uploadThumbs({
        position : "#upload-sub1"
    });
    $('#upload-sub2 input:file').uploadThumbs({
        position : "#upload-sub2"
    });
  });
});
