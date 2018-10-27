<?php

use think\migration\Seeder;
use app\project\model\Category AS CategoryModel;
class Category extends Seeder
{
    /**
     * Run Method.
     *
     * Write your database seeder using this method.
     *
     * More information on writing seeders is available here:
     * http://docs.phinx.org/en/latest/seeding.html
     */
    public function run()
    {
        \think\Db::execute('truncate table '.config('database.prefix').'categorys');
        $insert=[];
        for($i=0;$i<10;$i++){
            $insert[]=['name'=>random(mt_rand(2,10)),'pid'=>0];
        }
        foreach ($insert as $key=>$value){
            $category=CategoryModel::create($value);
            $id=$category->id;
            $insert_2=[];
            for($i=0;$i<mt_rand(0,10);$i++){
                $insert_2[]=['name'=>random(mt_rand(2,10)),'pid'=>$id];
            }
            foreach ($insert_2 as $k=>$v){
                $category=CategoryModel::create($v);
                $id=$category->id;
                $insert_3=[];
                for($i=0;$i<mt_rand(0,10);$i++){
                    $insert_3[]=['name'=>random(mt_rand(2,10)),'pid'=>$id];
                }
                foreach ($insert_3 as $_k=>$_v){
                    CategoryModel::create($_v);
                }
            }
        }
    }
}