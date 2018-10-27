<?php

return [
    'table_engine'   => 'myisam',#数据表引擎
    'pageSize'       => 5,#每页条数
    'api_log_on'     => true,#是否开启记录api接口请求
    'api_sign_check' => false,#是否开启api签名校验
    'api_sign_key'   => 'uun_dp-tp5',#api签名密钥
    'password_hash'  => 'uun_dp-tp5',#密码加密key
    'auth_expires_in'=> 30*24*3600,
    'is_allow_upload'=> true,//是否允许文件上传
];