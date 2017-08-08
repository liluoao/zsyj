<?php
    /**
     * Created by PhpStorm.
     * User: Li Luoao
     * Date: 2016/3/20
     * Time: 19:44
     */

    namespace app\common;
    use Yii;

    class Common
    {
        /*
		 * @author liuyao
		 * @date 2016-3-21
		 * @function 对密码进行加密
		 */
        public static function hashMD5($password){
            return sha1($password,false);
        }

        /*
		 * @author liuyao
		 * @date 2016-3-21
		 * @function 生成唯一ID
		 */
        public static function generateID(){
            return str_replace('.','zsyj',uniqid('zsyj',true));
        }

        /*
		 * @author liluoao
		 * @date 2016-4-13
		 * @function 生成唯一订单号
		 */
        public static function generateOrderCode(){
            return date('Ymd').substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 8);
        }

        /*
		 * @author liluoao
		 * @date 2016-4-17
		 * @function 生成随机6位密码
		 */
        public static function generatePassword(){
            $len=6;
            $chars='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
            mt_srand((double)microtime()*1000000*getmypid());
            $password="";
            while(strlen($password)<$len)
                $password.=substr($chars,(mt_rand()%strlen($chars)),1);
            return $password;
        }

        /*
		 * @author liuyao
		 * @date 2016-3-21
		 * @ 重置密码的默认密码：888888
		 */
        const PASSWORD = "888888";

        /*
		 * @author liuyao
		 * @date 2016-3-21
		 * @ 分页显示数目：10
		 */
        const PAGESIZE = '10';

        /*
		 * @author liuyao
		 * @date 2016-3-27
		 * @function 文件上传
		 */



        /*
		 * $isPic 是否是上传图片
         * $isDetailPic 是否是上传细节图
		 */
        public static function upload($files,$isPic,$isDetailPic){

            $ALL_UPLOAD_TYPE = array('image/gif','image/jpeg','image/pjpeg',
                'image/png','image/x-png','application/octet-stream','application/octet-stream',
                'application/zip','application/x-zip-compressed','application/msword',
                'application/vnd.ms-excel','application/vnd.ms-powerpoint','application/pdf');//配置允许上传文件的类型
            $ALL_UPLOAD_SIZE = 1024000 * 1; //配置允许上传文件的大小 4M
            $SAVEURL = "upload/";//文件保存路径
            $ALL_PIC_TYPE = array('gif','jpeg','png','jpg');//允许上传的图片后缀
            $ALL_DOC_TYPE = array('doc','pdf','txt','ppt','xls','docx','xlsx','pptx');//允许上传的文件后缀

            $new_image = array('width'=>460,'heigth'=>300);//上传图片切割成符合网站的格式
            $new_thum_image = array('width'=>160,'heigth'=>150);//上传图片切压缩符合网站的格式

            $fileArg = array();
            if (in_array($files["file"]["type"],$ALL_UPLOAD_TYPE) && ($files["file"]["size"] < $ALL_UPLOAD_SIZE)){
                $fileName = explode('.',$files["file"]["name"]);
                if(in_array($fileName[1],$ALL_PIC_TYPE) && $isPic){//图片处理方式
                    $fileNameRandom =  date("YmdHis") . mt_rand(10,99) . '.' . $fileName[1];
                    if($isDetailPic){
                        Common::resize($files["file"]["tmp_name"],$new_thum_image['width'],$new_thum_image['heigth']);
                        $fileArg['fileSaveUrl'] = $SAVEURL . 'pic/thumb_' . $fileNameRandom;
                    }else{
                        Common::resize($files["file"]["tmp_name"],$new_image['width'],$new_image['heigth']);
                        $fileArg['fileSaveUrl'] = $SAVEURL . 'pic/' . $fileNameRandom;
                    }
                    move_uploaded_file($files["file"]["tmp_name"],$fileArg['fileSaveUrl']);
                    $fileArg['fileName'] = 'pic';
                    $fileArg['tag'] = "success";
                }elseif(in_array($fileName[1],$ALL_DOC_TYPE)){//判断文件名后缀是否正确
                    $fileArg['fileName'] = $fileName[0];
                    $fileNameRandom =  date("YmdHis") . mt_rand(10,99) . '.' . $fileName[1];
                    $fileArg['fileSaveUrl'] = $SAVEURL.'doc/' . $fileNameRandom;
                    move_uploaded_file($files["file"]["tmp_name"],$fileArg['fileSaveUrl']);
                    $fileArg['tag'] = "success";
                }else{
                    $fileArg['fileName'] = "error";
                    $fileArg['fileSaveUrl'] = "error";
                    $fileArg['tag'] = "error";

                }
            }else{
                $fileArg['fileName'] = "error";
                $fileArg['fileSaveUrl'] = "error";
                $fileArg['tag'] = "error";
            }
            return $fileArg;

        }



        public static function getImageInfo($src)
        {
            return getimagesize($src);
        }
        /**
         * 创建图片，返回资源类型
         * @param string $src 图片路径
         * @return resource $im 返回资源类型
         * **/
        public static function create($src)
        {
            $info=Common::getImageInfo($src);
            switch ($info[2])
            {
                case 1:
                    $im=imagecreatefromgif($src);
                    break;
                case 2:
                    $im=imagecreatefromjpeg($src);
                    break;
                case 3:
                    $im=imagecreatefrompng($src);
                    break;
            }
            return $im;
        }
        /**
         * 缩略图主函数
         * @param string $src 图片路径
         * @param int $w 缩略图宽度
         * @param int $h 缩略图高度
         * @return mixed 返回缩略图路径
         * **/

        public static function resize($src,$w,$h)
        {
            $temp=pathinfo($src);
            $name=$temp["basename"];//文件名
            $dir=$temp["dirname"];//文件所在的文件夹
            $extension=$temp["extension"];//文件扩展名
            $savepath="{$dir}/{$name}";//缩略图保存路径,新的文件名为*.thumb.jpg

            //获取图片的基本信息
            $info=Common::getImageInfo($src);
            $width=$info[0];//获取图片宽度
            $height=$info[1];//获取图片高度
            $per1=round($width/$height,2);//计算原图长宽比
            $per2=round($w/$h,2);//计算缩略图长宽比

            //计算缩放比例
            if($per1>$per2||$per1==$per2)
            {
                //原图长宽比大于或者等于缩略图长宽比，则按照宽度优先
                $per=$w/$width;
            }
            if($per1<$per2)
            {
                //原图长宽比小于缩略图长宽比，则按照高度优先
                $per=$h/$height;
            }
            $temp_w=intval($width*$per);//计算原图缩放后的宽度
            $temp_h=intval($height*$per);//计算原图缩放后的高度
            $temp_img=imagecreatetruecolor($temp_w,$temp_h);//创建画布
            $im=Common::create($src);
            imagecopyresampled($temp_img,$im,0,0,0,0,$temp_w,$temp_h,$width,$height);
            if($per1>$per2)
            {
                imagejpeg($temp_img,$savepath, 100);
                imagedestroy($im);
                return Common::addBg($savepath,$w,$h,"w");
                //宽度优先，在缩放之后高度不足的情况下补上背景
            }
            if($per1==$per2)
            {
                imagejpeg($temp_img,$savepath, 100);
                imagedestroy($im);
                return $savepath;
                //等比缩放
            }
            if($per1<$per2)
            {
                imagejpeg($temp_img,$savepath, 100);
                imagedestroy($im);
                return Common::addBg($savepath,$w,$h,"h");
                //高度优先，在缩放之后宽度不足的情况下补上背景
            }
        }
        /**
         * 添加背景
         * @param string $src 图片路径
         * @param int $w 背景图像宽度
         * @param int $h 背景图像高度
         * @param String $first 决定图像最终位置的，w 宽度优先 h 高度优先 wh:等比
         * @return 返回加上背景的图片
         * **/
        public static function addBg($src,$w,$h,$fisrt="w")
        {
            $bg=imagecreatetruecolor($w,$h);
            $white = imagecolorallocate($bg,255,255,255);
            imagefill($bg,0,0,$white);//填充背景

            //获取目标图片信息
            $info=Common::getImageInfo($src);
            $width=$info[0];//目标图片宽度
            $height=$info[1];//目标图片高度
            $img=Common::create($src);
            if($fisrt=="wh")
            {
                //等比缩放
                return $src;
            }
            else
            {
                if($fisrt=="w")
                {
                    $x=0;
                    $y=($h-$height)/2;//垂直居中
                }
                if($fisrt=="h")
                {
                    $x=($w-$width)/2;//水平居中
                    $y=0;
                }
                imagecopymerge($bg,$img,$x,$y,0,0,$width,$height,100);
                imagejpeg($bg,$src,100);
                imagedestroy($bg);
                imagedestroy($img);
                return $src;
            }

        }


        /**
         * 生成缩略图
         * @author yangzhiguo0903@163.com
         * @param string     源图绝对完整地址{带文件名及后缀名}
         * @param string     目标图绝对完整地址{带文件名及后缀名}
         * @param int        缩略图宽{0:此时目标高度不能为0，目标宽度为源图宽*(目标高度/源图高)}
         * @param int        缩略图高{0:此时目标宽度不能为0，目标高度为源图高*(目标宽度/源图宽)}
         * @param int        是否裁切{宽,高必须非0}
         * @param int/float  缩放{0:不缩放, 0<this<1:缩放到相应比例(此时宽高限制和裁切均失效)}
         * @return boolean
         */
        public static function img2thumb($src_img, $dst_img, $width = 75, $height = 75, $cut = 0, $proportion = 0)
        {
            if(!is_file($src_img))
            {
                return false;
            }
            $ot = fileext($dst_img);
            $otfunc = 'image' . ($ot == 'jpg' ? 'jpeg' : $ot);
            $srcinfo = getimagesize($src_img);
            $src_w = $srcinfo[0];
            $src_h = $srcinfo[1];
            $type  = strtolower(substr(image_type_to_extension($srcinfo[2]), 1));
            $createfun = 'imagecreatefrom' . ($type == 'jpg' ? 'jpeg' : $type);

            $dst_h = $height;
            $dst_w = $width;
            $x = $y = 0;

            /**
             * 缩略图不超过源图尺寸（前提是宽或高只有一个）
             */
            if(($width> $src_w && $height> $src_h) || ($height> $src_h && $width == 0) || ($width> $src_w && $height == 0))
            {
                $proportion = 1;
            }
            if($width> $src_w)
            {
                $dst_w = $width = $src_w;
            }
            if($height> $src_h)
            {
                $dst_h = $height = $src_h;
            }

            if(!$width && !$height && !$proportion)
            {
                return false;
            }
            if(!$proportion)
            {
                if($cut == 0)
                {
                    if($dst_w && $dst_h)
                    {
                        if($dst_w/$src_w> $dst_h/$src_h)
                        {
                            $dst_w = $src_w * ($dst_h / $src_h);
                            $x = 0 - ($dst_w - $width) / 2;
                        }
                        else
                        {
                            $dst_h = $src_h * ($dst_w / $src_w);
                            $y = 0 - ($dst_h - $height) / 2;
                        }
                    }
                    else if($dst_w xor $dst_h)
                    {
                        if($dst_w && !$dst_h)  //有宽无高
                        {
                            $propor = $dst_w / $src_w;
                            $height = $dst_h  = $src_h * $propor;
                        }
                        else if(!$dst_w && $dst_h)  //有高无宽
                        {
                            $propor = $dst_h / $src_h;
                            $width  = $dst_w = $src_w * $propor;
                        }
                    }
                }
                else
                {
                    if(!$dst_h)  //裁剪时无高
                    {
                        $height = $dst_h = $dst_w;
                    }
                    if(!$dst_w)  //裁剪时无宽
                    {
                        $width = $dst_w = $dst_h;
                    }
                    $propor = min(max($dst_w / $src_w, $dst_h / $src_h), 1);
                    $dst_w = (int)round($src_w * $propor);
                    $dst_h = (int)round($src_h * $propor);
                    $x = ($width - $dst_w) / 2;
                    $y = ($height - $dst_h) / 2;
                }
            }
            else
            {
                $proportion = min($proportion, 1);
                $height = $dst_h = $src_h * $proportion;
                $width  = $dst_w = $src_w * $proportion;
            }

            $src = $createfun($src_img);
            $dst = imagecreatetruecolor($width ? $width : $dst_w, $height ? $height : $dst_h);
            $white = imagecolorallocate($dst, 255, 255, 255);
            imagefill($dst, 0, 0, $white);

            if(function_exists('imagecopyresampled'))
            {
                imagecopyresampled($dst, $src, $x, $y, 0, 0, $dst_w, $dst_h, $src_w, $src_h);
            }
            else
            {
                imagecopyresized($dst, $src, $x, $y, 0, 0, $dst_w, $dst_h, $src_w, $src_h);
            }
            $otfunc($dst, $dst_img);
            imagedestroy($dst);
            imagedestroy($src);
            return true;
        }
    }
