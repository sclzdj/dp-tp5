<?php

namespace app\project\validate;

use think\Validate;

class Category extends Validate
{
    protected $rule
        = [
            'pid'  => 'number',
            'name' => 'require|min:2|max:10',
            'sort' => 'number',
        ];
    protected $message
        = [
            'pid.number'   => '父级分类错误',
            'name.require' => '分类名称不能为空',
            'name.min'     => '分类名称最小2位',
            'name.max'     => '分类名称最大10位',
            'sort.number'  => '排序应该输入自然数',
        
        ];
}