<?php

use think\migration\Migrator;
use think\migration\db\Column;

class Categorys extends Migrator
{
    /**
     * Change Method.
     *
     * Write your reversible migrations using this method.
     *
     * More information on writing migrations is available here:
     * http://docs.phinx.org/en/latest/migrations.html#the-abstractmigration-class
     *
     * The following commands can be used in this method and Phinx will
     * automatically reverse them when rolling back:
     *
     *    createTable
     *    renameTable
     *    addColumn
     *    renameColumn
     *    addIndex
     *    addForeignKey
     *
     * Remember to call "create()" or "update()" and NOT "save()" when working
     * with the Table class.
     */
    public function change()
    {
        // create the table
        $table = $this->table('categorys',array('engine'=>config('custom.table_engine'),'comment'=>'分类'));
        $table->addColumn('name', 'string',array('limit' => 191,'default'=>'','comment'=>'名称'))
            ->addColumn('pid', 'integer',array('signed'=>false,'limit' => 11,'default'=>0,'comment'=>'父级id'))
            ->addColumn('sort', 'integer',array('signed'=>false,'limit' => 11,'default'=>100,'comment'=>'排序，升序取数据'))
            ->addColumn('create_time', 'integer',array('signed'=>false,'limit' => 11,'default'=>0,'comment'=>'创建时间'))
            ->addColumn('update_time', 'integer',array('signed'=>false,'limit' => 11,'default'=>0,'comment'=>'修改时间'))
            ->create();
    }
}
