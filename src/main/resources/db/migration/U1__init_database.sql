CREATE TABLE `users_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(32) NOT NULL COMMENT '微信 openid',
  `union_id` varchar(32) DEFAULT NULL COMMENT '跨应用唯一 id',
  `nickname` varchar(100) NOT NULL COMMENT '微信昵称',
  `bind_phone` varchar(11) DEFAULT NULL COMMENT '绑定手机',
  `head_icon` varchar(150) NOT NULL COMMENT '微信头像',
  `gender` tinyint(4) NOT NULL DEFAULT '0' COMMENT '性别，1-男，2-女',
  `area` varchar(30) DEFAULT NULL COMMENT '区域',
  `country` varchar(30) DEFAULT NULL COMMENT '国家',
  `province` varchar(30) DEFAULT NULL COMMENT '省份',
  `city` varchar(30) DEFAULT NULL COMMENT '城市',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户类型，0-普通用户,1-平台运营',
  `join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `last_login` datetime DEFAULT NULL COMMENT '上次登录时间',
  `_mt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_open_id` (`open_id`) USING BTREE,
  KEY `idx_join_date` (`join_date`) USING BTREE,
  KEY `idx_last_login` (`last_login`) USING BTREE,
  KEY `idx_mt` (`_mt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户账号表';
/*!40101 SET character_set_client = @saved_cs_client */;