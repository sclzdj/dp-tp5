<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/10/25
 * Time: 15:50
 */

namespace app\project\model;
use think\Model;

class USer extends Model
{
    // 设置当前模型对应的完整数据表名称
    protected $table = '__USERS__';
    
    // 自动写入时间戳
    protected $autoWriteTimestamp = true;
    
}