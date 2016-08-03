--系统
select t.*,t.rowid from syn_sysconf t where param_key='IPUBACC_SHARE_URL';
select t.*,t.rowid from syn_sysconf t where param_key='PUB_PUBLISHNOTIFY_URL';
http://192.168.120.10:8080/richlifeApp/devapp/IMPServer.NotifyEventWebservice
http://221.226.48.130:2119/richlifeApp/devapp/IMPServer.NotifyEventWebservice
select t.*,t.rowid from syn_sysconfset t;
select t.*,t.rowid from syn_sysconfmap t;
select t.*,t.rowid from syn_menu t order by parentid,ordernum;
select  t.*,t.rowid from syn_areacode t where t.parentid;

select  t.*,t.rowid from Syn_User t

--免费任务
select * from Syn_Invitecode t;
select * from syn_mission t;
select t.*,t.rowid from syn_usermission t where t.account ='18022473543';

--成长体系
select t.*,t.rowid from syn_growuptask t where  status<>2 t.extbonus is not null

--公众账号
select t.*,t.rowid from syn_pubsharetask t where t.tasktype=3 and status <>-4;
--update syn_pubsharetask set status=-4 where createtime < to_date('2014-04-18','yyyy-mm-dd');
select t.*,t.rowid from syn_pubaccountrcd t;
select count(1) from syn_pubaccblacklist;

select t.*,t.rowid from SYN_APPLYSUBSCIBER t;

--病毒营销
select t.*,t.rowid  from syn_viralmarkinvite t where t.account = '13631460767';
select t.*,t.rowid  from syn_viralmarkinvitercd t where t.account='15989119579';
select t.*,t.rowid  from syn_viralmarkprizercd t where t.account='15989119579';




--小号分享
select t.*,t.rowid,to_char(pubsharetaskid) from syn_inviteshare t order by lastupdatetime desc;
select t.*,t.rowid from t_mcmm_pubsharetask t where t.taskType = 3 and t.starttime < sysdate and t.auditStatus =1 and t.tryCount < 10 and (t.status = 0 or t.status = -1 );

select t.status,count(1) as total from syn_inviteshare t  group by t.status;
select t.status,TO_CHAR(lastupdatetime,'HH24:MI:SS'),count(1) as total from syn_inviteshare t  group by t.status,TO_CHAR(lastupdatetime,'HH24:MI:SS');
select * from syn_inviteshare where pubsharetaskid=20141024185519848 ;


--定时任务
select t.*,t.rowid from syn_timetask t where id = 4;

select * from t_mcmm_;
select t.*,t.rowid from T_MCMM_GROWUPTASK t;
select sysdate from dual;
--菜单
select t.*,t.rowid from syn_menu t order by parentid,ordernum;



--广告
select t.*,t.rowid from syn_adinfo t where adposid=2601 and  id >= 54409;
select  t.*,t.rowid from syn_adprorule t where adposid=2605;
select  t.*,t.rowid from syn_adprorule t  where adposid=2606;

108201 28
{"boxType":0,"radioListValue":[{"isDefault":"1","value":"","key":"不获取动态参数"},{"value":"{\"activeId\":\"zmsj\"}","key":"最美瞬间活动"}]}
net.sf.ezmorph.bean.MorphDynaBean@19a48b2[
  {activeId=zmsj}
]
select * from syn_adpostype;
select * from syn_adtype;
select t.*,t.rowid from syn_adpropertydefine t;
select t.*,t.rowid from SYN_ADPROPERTY t where fieldid=28 and value='eyJhY3RpdmVJZCI6ImZsYXNobW9tZW50In0=' adinfoid >= 54409;
select * from syn_adimg;

select * from syn_areacode


--查询广告ID
select a.id,c.value from syn_adinfo a,syn_adpropertydefine b,Syn_Adproperty c
where a.id = c.adinfoid and c.fieldid = b.id  and b.nodename ='title' 
and value='下管家玩转和彩云'
and a.id in(50015,50016,50018,50034,50075,50084,50101,50610,50677,50687,50702,50710,50722,50730)

--消息推送
select t.*,t.rowid from syn_pushmsg t where  id in(21736692) 20116102title like '%test3%';
select t.*,t.rowid from syn_pushmsg t where msgType=3
   
select * from syn_pushmsg where title like '%抢红包引发的血%';
select t.*,t.rowid from syn_pushtarget t where pushmsgid in (22125352) and account in ('13675835727','13631460800','13631460801','13631460802');
select t.*,t.rowid from syn_pushtarget_his t where pushmsgid in (10605793,12424358,12416164,12429086);
select t.*,t.rowid from syn_msgpushstatus t where pushmsgid in (22125352) and  pushtype = 0;
select * from syn_msgpushstatus_his where pushmsgid in (20724316) and  pushtype = 0;
select t.*,t.rowid from syn_userpushstatus t where  account='18102664480'
select t.*,t.rowid from syn_iospushmsg t  where  pushmsgid in(21872018) order by lastupdatetime desc
select t.*,t.rowid from syn_iospushmsg t  where id in(21776414)
select * from syn_iospushmsg_his order by lastupdatetime desc  15975304544

select * from syn_pushmsgterm  where pushmsgid in (49760659)

select account,count(1) from syn_msgpushstatus where pushmsgid in (60055349) and  pushtype = 0  group by account;
969
1777

--系统session信息
select * from v$session where schemaname = 'MCMM'

--营销活动
select t.*,t.rowid from syn_markactive t;
select t.*,t.rowid from syn_prizepool t where activeid = 1001;
select * from syn_prizercd;
select count(1) from syn_prizercd t;
select t.*,t.rowid from syn_drawchance t where account='13900000002';
select t.*,t.rowid from syn_winrcd t where account ='13900000002';
select t.*,t.rowid from syn_prizercd t where account='13631415281'
select t.*,t.rowid from syn_userevent t where account='13631415281';
select count(1) from syn_userevent t where createtime >  to_date('2005-02-27 09:23:44','yyyy-mm-dd hh24:mi:ss');
--truncate table t_mcmm_userevent;
select max(t.createtime) , min(t.createtime) from syn_userevent t;
--truncate table T_MCMM_PRIZERCD;

-----------------------------------------
select * from t_caiyunmovieking_gamepool;
select t.*,t.rowid from t_caiyunmovieking_gamechance t;
select t.*,t.rowid from t_public_paramvalue t where marketname='caiyunmovieking';
select  t.*,t.rowid from t_caiyunmovieking_winner t;

--MM
select t.*,t.rowid from syn_mmapp t where appid='300002828000' order by sortnum asc  where id='22102414' status=1 jsonstr like '%捕鱼传说%';

select t.*,t.rowid from syn_mmappdowntask t;
--update syn_mmappdowntask set status = 0 where status=-1
select count(1) from syn_mmappdowntask where status=2
select t.*,t.rowid from syn_mmappsrc t where appname like '%宠物天下%';

select (sysdate - lastupdatetime)*24,TRUNC(sysdate)-TRUNC(lastupdatetime) from syn_mmapp where id='22086746'

--my test 23455666777
