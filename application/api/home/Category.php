<?php
/**
 * Created by PhpStorm.
 * User: DuJun
 * Date: 2018/10/27
 * Time: 14:23
 */

namespace app\api\home;

use app\project\model\Category As CategoryModel;

class Category extends AuthUsers
{
    public function getIndex(){
        $categorys=CategoryModel::order('sort,id')->select();
        return json($categorys);
    }
}