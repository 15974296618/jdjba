TempBlockCookie=""
Cookie1=""


## Version: v4.4.1
## Date: 2021-07-30
## Update Content: EnableTaskFinishShell=true时，给task_finish.sh增加一个参考文件的链接。

export guaopencard_All="true"
export guaopencard_addSku_All="true"
export guaopencardRun_All="true"
export guaopencard_draw="true"
#export guaopenwait_All="0"
export guaDDGametype="all"
export gua_carnivalcity_draw="true"
export guaunknownTask_addSku_All="true"
## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第一区域：jd_scripts特有变量填写区域（需要shell转换的） ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

## Cookie（必填，由脚本去export JD_COOKIE，无需在config.sh中export）
## 请依次填入每个用户的Cookie，Cookie的具体形式（只有pt_key字段和pt_pin字段，没有其他字段）

## 每日签到的通知形式（选填，JD_BEAN_SIGN_STOP_NOTIFY和JD_BEAN_SIGN_NOTIFY_SIMPLE，由脚本去export，无需在config.sh中export）
## js脚本每日签到提供3种通知方式，分别为：关闭通知，请填入0；简洁通知，请填入1；长通知，请填入2
NotifyBeanSign="1"

## ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 第一区域：jd_scripts脚本特有变量填写区域（需要shell转换的） ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
##签到领现金
#export cash_zlzh="jd_5df379cc9de74,jd_tkiWtojFNzYM,jd_6a53ed5da4327"
##惊喜工厂开团
#export jxgc_kaituan="jd_5df379cc9de74&jd_tkiWtojFNzYM&jd_6a53ed5da4327"
##抢京豆
#export qjd_zlzh=['jd_5df379cc9de74','jd_tkiWtojFNzYM','jd_6a53ed5da4327']
##30现金
export earn30Pins="jd_5df379cc9de74"
#"特物Z"
export Opencardtw="true"  # (多抽一次奖)
#"早起赢现金"
export morningScPins="jd_5df379cc9de74"  # 指定打卡账号
##真抢京豆
export angryBeanPins="jd_5df379cc9de74"
export angryBeanMode="speed"
##惊喜开团
export OPEN_DREAMFACTORY_TUAN="1"
##愤怒的锦鲤
export kois="jd_5df379cc9de74"
##柠檬我是大老板通知
export dlbtz="false"
##东东超市兑换
export coinToBeans="京豆包"
export blueCoin_Cc="True"
## ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 第二区域：jd_scripts特有变量填写区域（不需要shell转换的） ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

## 请在本区域补充其他你需要用到变量，export 变量名="变量值"，或：export 变量名='变量值'
## 创建容器后在容器内运行 cat /jd/scripts/githubAction.md ，或访问 https://github.com/wisz2021/jd_docker/blob/main/githubAction.md 可查看环境变量清单
## 该链接中除JD_COOKIE、JD_BEAN_SIGN_STOP_NOTIFY、JD_BEAN_SIGN_NOTIFY_SIMPLE这三个变量以及所有互助码类变量外，其他所有变量请在本区域自行补充

################################ 主库设定（选填） ################################
## 值为空表示使用默认库：https://github.com/Annyoo2021/scripts.git
## 示例：JD_SCRIPTS_URL="https://github.com/abc/123.git" 库的地址
## 示例：JD_SCRIPTS_BRANCH="master" 库的分支，此项也需填写
## 注意：定义新的主库后，请 清空scripts文件夹、log文件夹，再更新

## 关闭助力作者
export HELP_AUTHOR="true"

## telegram推送
export TG_USER_ID=""
export TG_BOT_TOKEN=""

## 京小兑自动把抽奖卷兑换为兑币
export JD_JXD_EXCHANGE="true"


## 临时屏蔽某个Cookie（选填）
## 如果某些Cookie已经失效了，但暂时还没法更新，可以使用此功能在不删除该Cookie和重新修改Cookie编号的前提下，临时屏蔽掉某些编号的Cookie
## 多个Cookie编号以半角的空格分隔，两侧一对半角双引号，使用此功能后，在运行js脚本时账号编号将发生变化
## 举例1：TempBlockCookie="2"    临时屏蔽掉Cookie2
## 举例2：TempBlockCookie="2 4"  临时屏蔽掉Cookie2和Cookie4

## 如果只是想要屏蔽某个账号不玩某些小游戏，可以参考下面 case 这个命令的例子来控制，脚本名称（不含路径）请去掉后缀 “.js”，包括own脚本和其他你自己添加的脚本，均按这样处理。
case $1 in
  jd_cfdtx | jd_wsdlb | jd_cfd_loop | jd_joy_reward | jd_jddj_bean | jd_jddj_collectWater | jd_jddj_fruit | jd_jddj_getPoints | jd_jddj_plantBeans | jd_qqxing | jd_blueCoin)
   TempBlockCookie="2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49"
##     ;;
##   jd_dreamFactory | jd_jdfactory)
##     TempBlockCookie="2"      # 账号2不玩jd_dreamFactory和jd_jdfactory
##     ;;
##   jd_jdzz | jd_joy)
##     TempBlockCookie="3 6"    # 账号3、账号6不玩jd_jdzz和jd_joy
##     ;;
 esac

## 是否自动删除 jd_scripts 项目中失效的定时任务（选填）
AutoDelCron="true"

## 是否自动增加 jd_scripts 项目中新的本地定时任务（选填）
AutoAddCron="true"

## 删除日志的时间（选填） 
## 在运行删除旧的日志任务时，要删除多少天以前的日志，请输入正整数，不填则禁用删除日志的功能
RmLogDaysAgo="1"

## 随机延迟启动任务（选填）
## 如果任务不是必须准点运行的任务，那么给它增加一个随机延迟，由你定义最大延迟时间，单位为秒，如 RandomDelay="300" ，表示任务将在 1-300 秒内随机延迟一个秒数，然后再运行
## 在crontab.list中，在每小时第0-2分、第30-31分、第59分这几个时间内启动的任务，均算作必须准点运行的任务，在启动这些任务时，即使你定义了RandomDelay，也将准点运行，不启用随机延迟
## 在crontab.list中，除掉每小时上述时间启动的任务外，其他任务在你定义了 RandomDelay 的情况下，一律启用随机延迟，但如果你按照Wiki教程给某些任务添加了 "now"，那么这些任务也将无视随机延迟直接启动
RandomDelay=""

## 自动按顺序进行账号间互助（选填,默认已填开启）
## 设置为 true 时，将直接导入 jcode 最新日志来进行互助，如希望不完全按照jcode 最新日志来互助，可以在config目录下新建sharecode.sh，内容参考jcode日志并按需修改，sharecode.sh赋值内容会覆盖jcode日志中同名变量
## 如果启用了TempBlockCookie，那么只是被屏蔽的账号不助力其他账号，其他账号还是会助力被屏蔽的账号
## 如不需要自动互助，请设置为false，并将jcode脚本输出日志粘贴在第三区域或粘贴在config/sharecode.sh中，并自行根据需要进行修改
AutoHelpOther="true"

## 定义 jcode 脚本导出的互助码模板样式（选填）
## 不填 使用“按编号顺序助力模板”，Cookie编号在前的优先助力
## 填 0 使用“全部一致助力模板”，所有账户要助力的码全部一致
## 填 1 使用“均等机会助力模板”，所有账户获得助力次数一致
## 填 2 使用“随机顺序助力模板”，本套脚本内账号间随机顺序助力，每次生成的顺序都不一致。
HelpType="0"

## 当检测到scripts/githubAction.md文件发生变化时是否发送通知，该文件是jd_scripts所有环境变量的清单，填 true 则发送
EnvChangeNotify=""

## 是否在运行jup后再额外运行你自己写的 shell 脚本（选填）
## 如果你自己会写 shell 脚本，并且希望在每次 jup 这个脚本运行时，额外运行你的 shell 脚本，请赋值为 "true"
## 同时，请务必将你的脚本命名为 diy.sh (只能叫这个文件名)，放在 config 目录下
EnableJupDiyShell="true"

## 是否在运行jtask/otask/mtask后再额外运行你自己写的 shell 脚本（选填）
## 如果你自己会写 shell 脚本，并且希望在每次 jtask/otask/mtask 脚本后，额外运行你的 shell 脚本，请赋值为 "true"
## 同时，请务必将你的脚本命名为 task_finish.sh (只能叫这个文件名)，放在 config 目录下
## 注意：只在正常依次运行单个任务时才会额外运行 task_finish.sh，账号并发运行，或运行所有脚本时不会额外运行
## 参考文件：https://gitee.com/evine/my_scripts/blob/master/task_finish.sh ，千万千万不要照搬
EnableTaskFinishShell=""

## 启用其他开发者的仓库方式一（选填）：完整更新整个仓库，针对同一个仓库，方式一和方式二只能选择一种
## OwnRepoUrl：仓库地址清单，必须从1开始依次编号
## OwnRepoBranch：你想使用的分支清单，不指定分支（即使用默认分支）时可以用一对不包含内容的空引号""，编号必须和 OwnRepoUrl 对应。
## OwnRepoPath：要使用的脚本在仓库哪个路径下，请输入仓库下的相对路径，默认空值""代表仓库根目录，编号必须和 OwnRepoUrl 对应，同一个仓库下不同文件夹之间使用空格分开。如果既包括根目录又包括子目录，填写请见示例中OwnRepoPath3。
## 所有脚本存放在 own 目录下，三个清单必须一一对应，示例如下：
## OwnRepoUrl1="https://gitee.com/abc/jdtsa.git"
## OwnRepoUrl2="https://github.com/nedcd/jxddfsa.git"
## OwnRepoUrl3="git@github.com:eject/poex.git"
## 
## OwnRepoBranch1=""         # 代表第1个仓库 https://gitee.com/abc/jdtsa.git 使用 "默认" 分支
## OwnRepoBranch2="main"     # 代表第2个仓库 https://github.com/nedcd/jxddfsa.git 使用 "main" 分支
## OwnRepoBranch3="master"   # 代表第3个仓库 git@github.com:eject/poex.git 使用 "master" 分支
## 
## OwnRepoPath1=""                   # 代表第1个仓库https://gitee.com/abc/jdtsa.git，你想使用的脚本就在仓库根目录下。
## OwnRepoPath2="scripts/jd normal"  # 代表第2个仓库https://github.com/nedcd/jxddfsa.git，你想使用的脚本在仓库的 scripts/jd 和 normal文件夹下，必须输入相对路径
## OwnRepoPath3="'' cron"            # 代表第3个仓库git@github.com:eject/poex.git，你想使用的脚本在仓库的 根目录 和 cron 文件夹下，必须输入相对路径

OwnRepoUrl1=""
OwnRepoUrl2=""

OwnRepoBranch1=""
OwnRepoBranch2=""

OwnRepoPath1=""
OwnRepoPath2=""

## 启用其他开发者的仓库方式二（选填）：只下载想要的文件，针对同一个仓库，方式一和方式二只能选择一种。
## 请先确认你能正常下载该raw文件才列在下方，无论是github还是gitee，请只填入 raw 文件链接。
## 一行一个文件下载链接，首尾一对半角括号，示例：
## OwnRawFile=(
##     https://gitee.com/wabdwdd/scipts/raw/master/jd_abc.js
##     https://github.com/lonfeg/loon/raw/main/jd_dudi.js
##     https://github.com/sunsem/qx/raw/main/z_dida.js
## )
OwnRawFile=(

)

## 是否自动增加 own 类脚本（其他开发者脚本）的cron任务（选填）
## 本shell脚本不一定能完全从js脚本中识别出有效的cron设置，如果发现不能满足你的需要，请设置为 "false" 以取消自动增加。
AutoAddOwnCron="true"

## 是否自动删除 own 类脚本（其他开发者脚本）的cron任务（选填）
## 本shell脚本不一定能完全从js脚本中识别出有效的cron设置，如果发现不能满足你的需要，请设置为 "false" 以取消自动删除。
AutoDelOwnCron="true"







################################## 1. 定义京东多合一签到延迟签到（选填） ##################################
## 默认分批并发无延迟，自定义延迟签到，单位毫秒，延迟作用于每个签到接口
## 详见此处说明：https://github.com/NobyDa/Script/blob/master/JD-DailyBonus/JD_DailyBonus.js#L93
## 例: "2000" 则表示每个接口延迟2秒; "2000-5000" 则表示每个接口之间最小2秒至最大5秒内的随机延迟
## 如需填写建议输入数字 "1"，填入延迟则切换顺序签到（耗时较长）
#export JD_BEAN_STOP=""


################################## 2. 定义京东多合一签到是否静默运行（选填） ##################################
## 默认推送签到结果通知，如想要静默不发送通知，填 "true" 表示不发送通知
#export JD_BEAN_SIGN_STOP_NOTIFY=""


################################## 3. 定义京东多合一签到推送签到结果通知类型（选填） ##################################
## 默认推送签到简洁结果，填 "true" 表示推送简洁通知
## 具体效果查看效果图：https://gitee.com/lxk0301/jd_docker/blob/master/icon/bean_sign_simple.jpg
#export JD_BEAN_SIGN_NOTIFY_SIMPLE=""


################################## 4. 定义东东萌宠是否静默运行（选填） ##################################
## 默认为 "false"，不静默，推送通知消息，如不想收到通知，请修改为 "true"
## 每次执行脚本通知太频繁了，改成只在周三和周六中午那一次运行时发送通知提醒
## 除掉上述提及时间之外，均设置为 true，静默不发通知
## 特别说明：针对北京时间有效。
if [ $(date "+%w") -eq 6 ] && [ $(date "+%H") -ge 9 ] && [ $(date "+%H") -lt 14 ]; then
  export PET_NOTIFY_CONTROL="false"
elif [ $(date "+%w") -eq 3 ] && [ $(date "+%H") -ge 9 ] && [ $(date "+%H") -lt 14 ]; then
  export PET_NOTIFY_CONTROL="false"
else
  export PET_NOTIFY_CONTROL="true"
fi


################################## 5. 定义东东农场是否静默运行（选填） ##################################
## 默认为 "false"，不静默，推送通知消息，如不想收到通知，请修改为 "true"
## 如果您不想完全关闭或者完全开启通知，只想在特定的时间发送通知，可以参考下面的 "定义东东萌宠推送开关" 部分，设定几个if判断条件
export FRUIT_NOTIFY_CONTROL=""


################################## 6. 定义京东领现金是否静默运行（选填） ##################################
## 默认为 "true"，不推送通知消息，如果想收到通知，请修改为 "false"
export CASH_NOTIFY_CONTROL="true"


################################## 7. 定义京东领现金红包是否兑换京豆（选填） ##################################
## 京东领现金是否花费2元红包兑换成200京豆（此京豆有效期为180天，一周可换四次），默认为 "false" 不兑换，如想兑换，请修改为 "true"
export CASH_EXCHANGE="true"


################################## 8. 定义点点券是否静默运行（选填） ##################################
## 默认为 "false"，不静默，推送通知消息，如不想收到通知，请修改为 "true"
export DDQ_NOTIFY_CONTROL="true"


################################## 9. 定义京东赚赚小程序是否静默运行（选填） ##################################
## 默认为 "false"，不静默，推送通知消息，如不想收到通知，请修改为 "true"
export JDZZ_NOTIFY_CONTROL="true"


################################## 10. 定义京东摇钱树是否静默运行（选填） ##################################
## 默认为 "false"，不静默，推送通知消息，如不想收到通知，请修改为 "true"
export MONEYTREE_NOTIFY_CONTROL="true"


################################## 11. 定义宠汪汪兑换京豆是否静默运行（选填） ##################################
## 默认为 "false"，不静默，推送通知消息，如不想收到通知，请修改为 "true"
export JD_JOY_REWARD_NOTIFY=""


################################## 12. 定义宠汪汪喂食克数（选填） ##################################
## 您期望的宠汪汪每次喂食克数，只能填入10、20、40、80，默认为10
## 如实际持有食物量小于所设置的克数，脚本会自动降一档，直到降无可降
## 具体情况请自行在宠汪汪游戏中去查阅攻略
export JOY_FEED_COUNT="80"


################################## 13. 定义宠汪汪是否自动给好友的汪汪喂食（选填） ##################################
## 默认 "false" 不会自动给好友的汪汪喂食，如想自动喂食，请修改为 "true"
export JOY_HELP_FEED="true"


################################## 14. 定义宠汪汪是否自动报名参加赛跑（选填） ##################################
## 默认 "true" 参加双人赛跑，如需关闭，请修改为 "false"
export JOY_RUN_FLAG="true"


################################## 15. 定义宠汪汪参加比赛级别（选填） ##################################
## 当JOY_RUN_FLAG不设置或设置为 "true" 时生效
## 可选值：2,10,50，其他值不可以。其中2代表参加双人PK赛，10代表参加10人突围赛，50代表参加50人挑战赛，不填时默认为2
## 各个账号间请使用 & 分隔，比如：JOY_TEAM_LEVEL="2&2&50&10"
## 如果您有5个账号但只写了四个数字，那么第5个账号将默认参加2人赛，账号如果更多，与此类似
export JOY_TEAM_LEVEL="2"


################################## 16. 定义宠汪汪赛跑获胜后是否推送通知（选填） ##################################
## "flase" 为不推送通知消息，"true" 为发送推送通知消息
export JOY_RUN_NOTIFY="true"


################################## 17. 定义宠汪汪赛跑是否开启本地账号内部互助（选填） ##################################
## 默认为 "flase" 不内部互助，如果您本地有多个账号则可开启此功能，如需启用请修改为 "true"
export JOY_RUN_HELP_MYSELF="true"


################################## 18. 定义宠汪汪积分兑换京豆数量（选填） ##################################
## 目前的可用值包括：0、20、500，其中0表示为不自动兑换京豆，如不设置，将默认为"0"
## 不同等级可兑换不同数量的京豆，详情请见宠汪汪游戏中兑换京豆选项
## 500的京豆每天有总量限制，设置了并且您也有足够积分时，也并不代表就一定能抢到
export JD_JOY_REWARD_NAME="500"


################################## 19. 定义宠汪汪赛跑token（选填） ##################################
## 需自行抓包，宠汪汪小程序获取token，点击"发现"或"我的"，寻找^https:\/\/draw\.jdfcloud\.com(\/mirror)?\/\/api\/user\/user\/detail\?openId=获取token
export JOY_RUN_TOKEN=""


################################## 20. 定义东东超市兑换京豆数量（选填） ##################################
## 东东超市蓝币兑换，可用值包括：
## 一、0：表示不兑换京豆，这也是js脚本的默认值
## 二、20：表示兑换20个京豆
## 三、超值京豆包：表示兑换1000个京豆
## 四、可兑换清单的商品名称，输入能跟唯一识别出来的关键词即可，比如：MARKET_COIN_TO_BEANS="抽纸"
## 注意：有些比较贵的实物商品京东只是展示出来忽悠人的，即使您零点用脚本去抢，也会提示没有或提示已下架
export MARKET_COIN_TO_BEANS="超值京豆包"


################################## 21. 定义东东超市兑换奖品成功后是否静默运行（选填） ##################################
## 默认 "false" 关闭（即:奖品兑换成功后会发出通知提示），如需要静默运行不发出通知，请修改为 "true"
export MARKET_REWARD_NOTIFY=""


################################## 22. 定义东东超市是否自动参加PK队伍（选填） ##################################
## 默认为 "true" ，每次PK活动参加脚本作者创建的PK队伍，若不想参加，请修改为 "false"
export JOIN_PK_TEAM=""


################################## 23. 定义东东超市是否自动使用金币去抽奖（选填） ##################################
## 是否用金币去抽奖，默认 "false" 关闭，如需开启，请修改为 "true"
export SUPERMARKET_LOTTERY="true"


################################## 24. 定义东东农场是否使用水滴换豆卡（选填） ##################################
## 如果出现限时活动时100g水换20豆，此时比浇水划算，推荐换豆，"true" 表示换豆（不浇水），"false" 表示不换豆（继续浇水），默认为"false"
## 如需切换为换豆（不浇水），请修改为 "true"
export FRUIT_BEAN_CARD="true"


################################## 25. 定义 unsubscribe 取关参数（选填） ##################################
## 具体教程：https://github.com/wisz2021/jd_docker/blob/main/githubAction.md#%E5%8F%96%E5%85%B3%E5%BA%97%E9%93%BA%E7%8E%AF%E5%A2%83%E5%8F%98%E9%87%8F%E7%9A%84%E8%AF%B4%E6%98%8E
## jd_unsubscribe这个任务是用来取关每天做任务关注的商品和店铺，默认在每次运行时取关所有商品和店铺，不填为取关所有，填 "0" 为不取关
## 商品取关数量
goodPageSize=""
## 店铺取关数量
shopPageSize=""
## 遇到此商品不再取关此商品以及它后面的商品，需去商品详情页长按拷贝商品信息
jdUnsubscribeStopGoods=""
## 遇到此店铺不再取关此店铺以及它后面的店铺，请从头开始输入店铺名称
jdUnsubscribeStopShop=""


################################## 26. 定义疯狂的JOY是否循环助力（选填） ##################################
## 默认 "false" 不开启循环助力，如需开启循环助力，请修改为 "true"
export JDJOY_HELPSELF=""


################################## 27. 定义疯狂的JOY京豆兑换数量（选填） ##################################
## 目前最小值为 2000 京豆，默认为 "0" 不开启京豆兑换
export JDJOY_APPLYJDBEAN=""


################################## 28. 定义疯狂的JOY购买joy等级（选填） ##################################
## 疯狂的JOY自动购买什么等级的JOY，如需要使用请自行解除注释，可购买等级为 "1~30"
# export BUY_JOY_LEVEL=""


################################## 29. 定义摇钱树是否自动将金果卖出变成金币（选填） ##################################
## 金币有时效，默认为 "false"，不卖出金果为金币，如想希望自动卖出，请修改为 "true"
export MONEY_TREE_SELL_FRUIT=""


################################## 30. 定义东东工厂心仪的商品（选填） ##################################
## 只有在满足以下条件时，才自动投入电力：一是存储的电力满足生产商品所需的电力，二是心仪的商品有库存，如果没有输入心仪的商品，那么当前您正在生产的商品视作心仪的商品
## 如果您看不懂上面的话，请去东东工厂游戏中查阅攻略
## 心仪的商品请输入商品的全称或能唯一识别出该商品的关键字
export FACTORAY_WANTPRODUCT_NAME=""


################################## 31. 定义京喜工厂控制哪个京东账号不运行此脚本（选填） ##################################
## 输入"1"代表第一个京东账号不运行，多个使用 & 连接，例："1&3" 代表账号1和账号3不运行京喜工厂脚本，注：输入"0"，代表全部账号不运行京喜工厂脚本
## 如果使用了 “临时屏蔽某个Cookie” TempBlockCookie 功能，编号会发生变化
export DREAMFACTORY_FORBID_ACCOUNT=""


################################## 32. 定义东东工厂控制哪个京东账号不运行此脚本（选填） ##################################
## 输入"1"代表第一个京东账号不运行，多个使用 & 连接，例："1&3" 代表账号1和账号3不运行东东工厂脚本，注：输入"0"，代表全部账号不运行东东工厂脚本
## 如果使用了 “临时屏蔽某个Cookie” TempBlockCookie 功能，编号会发生变化
export JDFACTORY_FORBID_ACCOUNT=""


################################## 33. 定义京喜财富岛是否静默运行（选填） ##################################
## 默认为 "false"，不推送通知消息，如果想收到通知，请修改为 "true"
export CFD_NOTIFY_CONTROL=""


################################## 34. 定义京喜农场控制通知推送级别（选填） ##################################
## 默认为 "1"，通知级别（0=只通知成熟；1=本次获得水滴>0；2=任务执行；3=任务执行+未种植种子）
export JXNC_NOTIFY_LEVEL="0"


################################## 35. 定义 lxk0301/jd_scripts 仓库的脚本是否做加购任务（选填） ##################################
## 默认不做加购任务，目前东东小窝(jd_small_home.js)和跳跳乐瓜分京豆(jd_jump.js)脚本会有加购任务，如需做此类型任务请修改为 "true"
export PURCHASE_SHOPS="true"


################################## 36. 定义京喜工厂拼团瓜分电力活动ID（选填） ##################################
## 默认读取作者设置的，如出现脚本开团提示失败：`活动已结束，请稍后再试~`，可自行抓包替换(开启抓包，进入拼团瓜分电力页面，寻找带有`tuan`的链接里面的`activeId=`
export TUAN_ACTIVEID="tCo0qqjNLYX_v3sjUL8RcQ=="


################################## 37. 定义宠汪汪验证二代目脚本预存验证数量（选填） ##################################
## 由于现在宠汪汪需要验证码，为此开发了识别验证码的脚本（jd_validate_Worker.js），用于宠汪汪兑换时使用
## 运行新的宠汪汪兑换等脚本需要自行安装环境，可执行一键安装脚本：bash docker/install_env.sh（最新的镜像已经预装）
## 验证具有时效性，平均10秒左右/个，自行测试不要影响兑换，目前建议使用默认定时
export validate_num=""


################################## 38. 定义京喜财富岛热气球间隔时间（选填） ##################################
## 控制京喜财富岛热气球挂机 "jd_cfd_loop.ts" 接待游客间隔时间（右下角的热气球），建议设置为 "20000" 即20秒
## 此挂机脚本已加入到 hangup 命令中，需使用集成了 TypeScript 的最新环境
export CFD_LOOP_DELAY="20000"


################################## 39. 定义京喜财富岛提现金额（选填） ##################################
## 控制京喜财富岛提现金额，脚本自带token无需抓包，可选金额：0.1、0.5、1、2、10
## 需留够金币升级一个建筑或当日解锁100财富值才可以解锁提现
export CFD_CASHOUT_MONEY="10"



