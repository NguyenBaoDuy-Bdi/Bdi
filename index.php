<?php
    require_once(__DIR__."/config/config.php");
    require_once(__DIR__."/config/function.php");
    $title = 'HOME | '.$CMSNT->site('tenweb');
    require_once(__DIR__."/public/client/Header.php");
    require_once(__DIR__."/public/client/Nav.php");
?>
<?php
if($CMSNT->site('status_ref') == 'ON'){
    if(isset($_GET['ref']) ){
        $ref_id = check_string($_GET['ref']);
        if($CMSNT->get_row("SELECT * FROM `users` WHERE `id` = '$ref_id' ")['ip'] != myip()){
            $CMSNT->cong("users", "ref_click", 1, " `id` = '$ref_id' ");
            $_SESSION['ref'] = check_string($_GET['ref']);
        }
        else{
            $_SESSION['ref'] = NULL;
        }
    }
}

if(empty($_SESSION['ref']))
{
    $_SESSION['ref'] = NULL;
}
?>

<div class="heading-page">
    <div class="container">
        <ol class="breadcrumb" itemscope itemtype="http://schema.org/BreadcrumbList">
            <li class="breadcrumb-item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <a itemprop="item" href="<?=BASE_URL('');?>"><span itemprop="name">Trang Chủ</span></a>
                <span itemprop="position" content="1"></span>
            </li>
            <li class="breadcrumb-item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <a itemprop="item" href="<?=BASE_URL('');?>"><span itemprop="name">Ví <?=$CMSNT->site('tenweb');?></span></a>
                <span itemprop="position" content="3"></span>
            </li>
        </ol>
    </div>
</div>

<?php if(getSite('display_carousel') == 'ON') { ?>
<div id="myCarousel" class="carousel slider slide" data-ride="carousel"
    style="background: <?=$CMSNT->site('theme_color');?>">
    <div class="container slide">
        <div class="carousel-inner">
            <div class="item active">
                <div class="row">
                    <div class="col-sm-6 pull-right"><img src="<?=BASE_URL('assets/img/');?>support.png"
                            alt="Tích hợp API gạch thẻ tự động cho Shop" /></div>
                    <div class="col-sm-6">
                        <div class="slide-text">
                            <h3 style="color: #ffffff">Tích hợp API gạch thẻ tự động cho Shop</h3>
                            <p class="hidden-xs" style="color: #ffffff">Cam kết không nuốt thẻ, không bảo trì, có nhân
                                viện trực hỗ trợ 24/24, rút tiền sau 1 phút. Hotline: <?=$CMSNT->site('hotline');?></p>
                            <a href="<?=BASE_URL('Ket-noi-api');?>" class="btn btn-warning text-uppercase hidden-xs">
                                Xem ngay </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="row">
                    <div class="col-sm-6 pull-right"><img src="<?=BASE_URL('assets/img/');?>payment.png"
                            alt="Đổi thẻ cào thành tiền mặt nhanh chóng - tiện lợi" /></div>
                    <div class="col-sm-6">
                        <div class="slide-text">
                            <h3 style="color: #ffffff">Đổi thẻ cào thành tiền mặt nhanh chóng - tiện lợi</h3>
                            <p class="hidden-xs" style="color: #ffffff">Gạch thẻ siêu rẻ chiết khấu 15 - 20%. Rút free
                                phí về các ngân hàng Nội địa Việt Nam, Ví điện tử Momo</p>
                            <a href="" class="btn btn-warning text-uppercase hidden-xs"> Đổi Thẻ Ngay </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
</div>
<?php }?>

<section class="main">
    <div class="container">
        <br>
        <div class="row">
            <div class="col-md-12">
                <div class="gradient-border">
                    <div class="panel-body"><?=$CMSNT->site('thongbao');?></div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading"
                        style="color:white; background-color: <?=$CMSNT->site('theme_color');?>;">
                                ĐỔI THẺ CÀO TỰ ĐỘNG</div>
                            <div class="panel-body">

                                <div id='loading_box' style='display:none;'>
                                    <center><img src='<?=BASE_URL('assets/img/loading_box.gif');?>' /></center>
                                </div>
                                <div class="row">
                                    <div id="thongbao" class="col-lg-12"></div>
                                    <div id='loading_box' style='display:none;'>
                                        <center><img src='<?=BASE_URL('assets/img/loading_box.gif');?>' /></center>
                                    </div>
                                </div>
                                <div id="divGachthecao">
                                    <div class="gachthe row" data-row="1">
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <select id="loaithe" class="telco form-control" data-row="1"></select>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <select id="menhgia" class="charging-amount form-control" data-row="1">
                                                    <option value="0">Chọn mệnh giá</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <input id="seri" class="serial form-control" type="text" data-row="1"
                                                    placeholder="Serial">

                                            </div>
                                        </div>
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <input id="pin" class="pin form-control" type="text" data-row="1"
                                                    placeholder="Mã thẻ">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <button id="btnAddChild" class="btn btn-sm"><img
                                                src="<?=BASE_URL('assets/img/add-icon.png');?>" width="20px"> THÊM
                                            NGAY</button>

                                    </div>
                                    <div class="col-sm-6">
                                        <button class="btn btn-sm" onClick="window.location.reload();"
                                            style="float:right"><img
                                                src="<?=BASE_URL('assets/img/delete-all-icon.png');?>" width="20px"> XOÁ
                                            TẤT CẢ</button>
                                    </div>
                                </div>
                                <input type="hidden" id="token"
                                    value="<?=isset($_SESSION['username']) ? $getUser['token'] : '';?>">
                                <center>
                                    <a type="submit" class="btn" id="NapTheAuto">
                                        <img src="<?=BASE_URL('assets/img/button-nap-ngay.gif');?>" width="170px">
                                    </a>
                                </center>
                            </div>



                        </div>
                        <script type="text/javascript">
                        $(document).ready(function() {
                            setTimeout(e => {
                                GetCard24()
                            }, 0)
                        });
                        $('#btnAddChild').click(function() {
                            PlaySound('click');
                            getchildordercardbuy();
                        });

                        function getchildordercardbuy() {
                            var totalRow = $('#divGachthecao .gachthe').length;
                            if (totalRow > 10) {
                                PlaySound('ban_chi_co_the_giu_len_he_thong_toi_da_10_the_1_lan');
                                alert('Bạn chỉ có thể gửi lên hệ thống tối đa 10 thẻ 1 lần');
                            } else {
                                $.ajax({
                                    url: "<?=BASE_URL('assets/ajaxs/divGachthecao.php');?>",
                                    method: "GET",
                                    success: function(response) {
                                        $('#divGachthecao').append(response);
                                    }
                                });
                            }
                        }

                        $(document).on('change', '.telco', function() {
                            var dataRow = $(this).data('row');
                            $('.charging-amount[data-row="' + dataRow + '"]').empty();
                            $.ajax({
                                url: "<?=BASE_URL('assets/ajaxs/menhgia.php');?>",
                                method: "GET",
                                data: {
                                    loaithe: $(this).val(),
                                    type: $(this).find(':selected').data('type')
                                },
                                success: function(response) {
                                    $('.charging-amount[data-row="' + dataRow + '"]').html(
                                        response);
                                }
                            });
                        });
                        $("#NapTheAuto").click(function() {
                            PlaySound('click');
                            proccessListOrderCardBuy();
                        });

                        function proccessListOrderCardBuy() {
                            var lstDataSubmit = [];
                            var i = 1;
                            $('#divGachthecao .gachthe').each(function() {
                                var dataRow = $(this).data('row');
                                var dataOne = {
                                    loaithe: $('select.telco[data-row="' + dataRow + '"] :selected').val(),
                                    menhgia: $('select.charging-amount[data-row="' + dataRow +
                                            '"] :selected').val() != undefined ?
                                        $('select.charging-amount[data-row="' + dataRow + '"] :selected')
                                        .val() : '',
                                    type: $('select.telco[data-row="' + dataRow + '"] :selected').data(
                                        'type'),
                                    pin: $('input.pin[data-row="' + dataRow + '"]').val(),
                                    serial: $('input.serial[data-row="' + dataRow + '"]').val(),
                                };
                                lstDataSubmit.push(dataOne);
                            });
                            if (lstDataSubmit.length > 0) {
                                $("#loading_box").show();
                                $.ajax({
                                    url: "<?=BASE_URL('assets/ajaxs/NapThe2.php');?>",
                                    type: 'POST',
                                    data: {
                                        data: lstDataSubmit,
                                        type: 'NapTheAuto',
                                        token: $("#token").val(),
                                    },
                                    beforeSend: function() {
                                        $('#NapTheAuto').html(
                                            '<img src="<?=BASE_URL('assets/img/loading.gif');?>" width="200px">'
                                            );
                                        $('#NapTheAuto').prop('disabled', true);
                                    },
                                    success: function(res) {
                                        $('#NapTheAuto').html(
                                            '<img src="<?=BASE_URL('assets/img/button-nap-ngay.gif');?>" width="170px">'
                                        );
                                        $('#NapTheAuto').prop('disabled', false);
                                        $("#thongbao").html(res);
                                        var str2 = "alert-success";
                                        if (res.indexOf(str2) != -1) {
                                            setTimeout(function() {
                                                window.location.href =
                                                    '<?=BASE_URL('');?>';
                                            }, 3000);
                                        }
                                        $("#loading_box").hide();
                                    }
                                });
                            }
                        }

                        function GetCard24() {
                            $.ajax({
                                url: "<?=BASE_URL('api/loaithe.php');?>",
                                method: "GET",
                                success: function(response) {
                                    $("#loaithe").html(response);
                                }
                            });
                        }
                        </script>
                    </div>
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading"
                        style="color:white; background-color: <?=$CMSNT->site('theme_color');?>;">
                        BIỂU PHÍ ĐỔI THẺ</div>
                    <div class="panel-body">
                        <div class="tabpage" id="bang-phi">
                            <ul class="nav nav-tabs">
                                <?php foreach($list_loaithe as $loaithe) { ?>
                                <li class="<?=$loaithe == 'VIETTEL' ? 'active' : '';?>">
                                    <a data-toggle="tab" href="#discount-<?=$loaithe;?>">
                                        <span class="title"><?=$loaithe;?></span>
                                    </a>
                                </li>
                                <?php }?>
                            </ul>
                            <div class="tab-content" style="padding-top: 20px;">
                                <?php foreach($list_loaithe as $loaithe) { ?>
                                <div class="table-responsive tab-pane fadess in <?=$loaithe == 'VIETTEL' ? 'active' : '';?>"
                                    id="discount-<?=$loaithe;?>">
                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                        <th class="text-center">Nhóm thành
                                                            viên
                                                        </th>
                                                        <th class="text-center">Thẻ 10,000đ
                                                        </th>
                                                        <th class="text-center">Thẻ 20,000đ
                                                        </th>
                                                        <th class="text-center">Thẻ 30,000đ
                                                        </th>
                                                        <th class="text-center">Thẻ 50,000đ
                                                        </th>
                                                        <th class="text-center">Thẻ 100,000đ
                                                        </th>
                                                        <th class="text-center">Thẻ 200,000đ
                                                        </th>
                                                        <th class="text-center">Thẻ 300,000đ
                                                        </th>
                                                        <th class="text-center">Thẻ 500,000đ
                                                        </th>
                                                        <th class="text-center">Thẻ
                                                            1,000,000đ
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody class="text-center">
                                                    <tr style="color: red;">
                                                        <td><b><a style="color: #FF0000"> <span class="label label-danger"> <b>Thành viên</b></span> </a></b></td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '10000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '20000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '30000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '50000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '100000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '200000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '300000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '500000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '1000000' ")['ck'];?>%
                                                        </td>
                                                    </tr>
                                                    <tr style="color: green;">
                                                        <td><b><a style="color: #FF0000"> <span class="label label-success"> <b>Đại lí/PR web</b></span> </a></b></td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '10000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '20000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '30000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '50000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '100000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '200000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '300000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '500000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '1000000' ")['ck'];?>%
                                                        </td>
                                                    </tr>
                                                    <tr style="color: blue;">
                                                        <td><b><a style="color: #FF0000"> <span class="label label-primary"> <b>Siêu Vip/ 30Tr</b></span> </a></b></td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_diamond` WHERE `loaithe` = '$loaithe' AND `menhgia` = '10000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_diamond` WHERE `loaithe` = '$loaithe' AND `menhgia` = '20000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_diamond` WHERE `loaithe` = '$loaithe' AND `menhgia` = '30000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_diamond` WHERE `loaithe` = '$loaithe' AND `menhgia` = '50000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_diamond` WHERE `loaithe` = '$loaithe' AND `menhgia` = '100000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_diamond` WHERE `loaithe` = '$loaithe' AND `menhgia` = '200000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_diamond` WHERE `loaithe` = '$loaithe' AND `menhgia` = '300000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_diamond` WHERE `loaithe` = '$loaithe' AND `menhgia` = '500000' ")['ck'];?>%
                                                        </td>
                                                        <td><?=$CMSNT->get_row("SELECT * FROM `ck_card_auto_diamond` WHERE `loaithe` = '$loaithe' AND `menhgia` = '1000000' ")['ck'];?>%
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <?php }?>
                                        <p class="text-center" style="font-size: 15px">Nhóm của bạn là: <?=myRank();?></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>
</section>

<?php if($CMSNT->site('status_blog') == 'ON') { ?>
<center>
<div style="font-size: 30px">
<script type="text/javascript">
farbbibliothek = new Array();
farbbibliothek[0] = new Array("#FF0000","#FF1100","#FF2200","#FF3300","#FF4400","#FF5500","#FF6600","#FF7700","#FF8800","#FF9900","#FFaa00","#FFbb00","#FFcc00","#FFdd00","#FFee00","#FFff00","#FFee00","#FFdd00","#FFcc00","#FFbb00","#FFaa00","#FF9900","#FF8800","#FF7700","#FF6600","#FF5500","#FF4400","#FF3300","#FF2200","#FF1100");
farbbibliothek[1] = new Array("#00FF00","#000000","#00FF00","#00FF00");
farbbibliothek[2] = new Array("#00FF00","#FF0000","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00","#00FF00");
farbbibliothek[3] = new Array("#FF0000","#FF4000","#FF8000","#FFC000","#FFFF00","#C0FF00","#80FF00","#40FF00","#00FF00","#00FF40","#00FF80","#00FFC0","#00FFFF","#00C0FF","#0080FF","#0040FF","#0000FF","#4000FF","#8000FF","#C000FF","#FF00FF","#FF00C0","#FF0080","#FF0040");
farbbibliothek[4] = new Array("#FF0000","#EE0000","#DD0000","#CC0000","#BB0000","#AA0000","#990000","#880000","#770000","#660000","#550000","#440000","#330000","#220000","#110000","#000000","#110000","#220000","#330000","#440000","#550000","#660000","#770000","#880000","#990000","#AA0000","#BB0000","#CC0000","#DD0000","#EE0000");
farbbibliothek[5] = new Array("#000000","#000000","#000000","#FFFFFF","#FFFFFF","#FFFFFF");
farbbibliothek[6] = new Array("#0000FF","#FFFF00");
farben = farbbibliothek[4];
function farbschrift(){for(var b=0;b<Buchstabe.length;b++){document.all["a"+b].style.color=farben[b]}farbverlauf()}function string2array(b){Buchstabe=new Array();while(farben.length<b.length){farben=farben.concat(farben)}k=0;while(k<=b.length){Buchstabe[k]=b.charAt(k);k++}}function divserzeugen(){for(var b=0;b<Buchstabe.length;b++){document.write("<span id='a"+b+"' class='a"+b+"'>"+Buchstabe[b]+"</span>")}farbschrift()}var a=1;function farbverlauf(){for(var b=0;b<farben.length;b++){farben[b-1]=farben[b]}farben[farben.length-1]=farben[-1];setTimeout("farbschrift()",30)}var farbsatz=1;function farbtauscher(){farben=farbbibliothek[farbsatz];while(farben.length<text.length){farben=farben.concat(farben)}farbsatz=Math.floor(Math.random()*(farbbibliothek.length-0.0001))}setInterval("farbtauscher()",5000);

text= "TIN TỨC"; //h
string2array(text);
divserzeugen();
//document.write(text);
</script></div>
</center>

  <section class="main"> 
   <div class="container"> 
    <br> 
    <div class="row">
     <center> 
                        <?php foreach($CMSNT->get_list("SELECT * FROM `blogs` WHERE `display` = 'SHOW' ") as $row) { ?>
       <div class="col-lg-3 col-md-3  col-sm-4 col-xs-6"> 
        <div class="thumbnail"> 
         <a class="cover" href="<?=BASE_URL('Blog/'.$row['id']);?>"> <img src="<?=$row['img'];?>" width="200" height="140" alt="<?=$row['title'];?>"> </a> 
         <div class="caption"> 
          <h5><a class="title" href="<?=BASE_URL('Blog/'.$row['id']);?>"><?=$row['title'];?></a> </h5> 
              </div> 
             </div> 
            </div> 
          <?php }?>
          </div>
         </div>
        </div>
       <?php }?>
      </div>
     </div>
    </div>
   </div>
  </center> 
 </div>
</div>
</section>

<script type="text/javascript">
$("#UpdateHistory").on('change', function() {
    if (document.getElementById('UpdateHistory').checked == true) {
        PlaySound('tu_dong_cap_nhat_ket_qua_dang_duoc_bat');

        function loadHistoryCard() {
            $.ajax({
                url: "<?=BASE_URL('assets/ajaxs/loadHistoryCard.php');?>",
                type: "GET",
                dateType: "text",
                data: {

                },
                success: function(result) {
                    $('#loadHistoryCard').html(result);
                }
            });
        }
        var refreshIntervalId = setInterval(function() {
            $('#loadHistoryCard').load(loadHistoryCard());
        }, 3000);

    } else {
        PlaySound('vui_long_tai_lai_trang');
        clearInterval(refreshIntervalId);
    }
});
</script>

<script>
function PlaySound(type) {
    var audio = new Audio('<?=BASE_URL('assets/sound/click.mp3');?>');
    audio.pause();
    audio.play();
}
</script>
<script>
$(function() {
    $("#datatable").DataTable({
        "responsive": false,
        "autoWidth": false,
    });
});
</script>
<?php 
    require_once(__DIR__."/public/client/Footer.php");
?>