//[rule: logs ?]
//[admin: true]
/**
 * 使用方法logs 计算的数量
 * 比如logs 100
 * 就计算100个，建议不要太大，因为怕青龙变量值不够存，目前测试400个没有问题，多了没测试。
 * 
 * @param ql_token 获取傻妞保存的青龙token，用过我jd_cmd插件的可用，没用过的或者要换个青龙跑这插件的自己获取token替换“get('qltoken')”
 * @param ql_url 青龙地址，用于保存计算后的值，变量名logs
 * @param log_url 自己的log api地址，目前仅适配兔子
 * 鸣谢@和尚大佬修改
 */
/**
 * 修改区域开始
 */
const ql_token = ''; //青龙token 游览器打开http://xxxxxx:5700/open/auth/token?client_id=xxxxxx&client_secret=xxxxxxxx 将返回里token填进去
const ql_url = 'http://192.*.*.*:5700'; //自己的青龙地址 与上方地址同一个青龙
const log_url = 'http://www.madrabbit.cf:8080/license/log?tg_id=1072936724&token=PGjfir9546';  //自己的api地址  请积极赞助兔子获取自己的api
//上方免费提供一个 每日120次 请大家分时获取 50log可用一星期  傻妞命令如:logs 50 
/**
 * 修改区域结束
 */


let count = 0;
const number = param(1);
function calcLogs(num) {
    sendText(`需求计算${num}个，大约需要${num * Math.random() * 2 + 1}秒，请耐心等待。`);
    let status = false;
    let content = [{
        "name": "logs",
        "remarks": "锦鲤logs",
        "value": ""
    }];
    for (let i = 0; i < num; i++) {
        request({
            url: log_url,
            method: 'get',
            json: true
        }, (err, rsp) => {
            if (err || rsp.statusCode != 200) {
                return '';
            } else if (rsp.body.success) {
                let data = rsp.body.data;
                let random = data.random;
                let log = data.log;
                content[0].value += '"random":"' + random + '","log":"' + log + '"\n';
                count++;
            }
        });
    }
    if (count) {
        status = true;
        sendText(`成功计算${count}个logs，准备更新至青龙环境变量 -> logs`);
    } else { sendText(`计算logs失败`); }
    return { status: status, content: content };
}

function queryQLEnvs(bodys) {
    let options = {
        url: ql_url + '/open/envs',
        json: true,
        headers: {
            Authorization: "Bearer " + ql_token,
            "Content-Type": "application/json; charset=utf-8"
        }
    };
    let checkID = () => {
        let id = [];
        options.method = "get";
        request(options, (err, rsp) => {
            (err || rsp.statusCode != 200) ? sendText(`青龙访问失败！\n${rsp.body.message}`) : data = rsp.body ? rsp.body.data : [];
            data.forEach(e => {
                if (e.name == "logs") {
                    let t = e.id ? e.id : e._id;
                    id.push(t);
                }
            });
        });
        return id;
    }
    let deleteAndAddPar = (id) => {
        options.method = "delete";
        id.length != 1 ? sendText(`识别到你有${id.length}个logs变量，将合并为一条并覆盖更新`) : sendText(`检测到已存在logs变量，将覆盖更新`);
        options.body = id;
        request(options, (err, rsp) => {
            (rsp.body.code != 200) ? sendText(`覆盖更新失败！\n${rsp.body.message}`) : '';
        });
        options.method = "post";
        options.body = bodys;
        request(options, (err, rsp) => {
            (rsp.body.code != 200) ? sendText(`覆盖更新失败！\n${rsp.body.message}`) : sendText(`更新完成，可直接运行🍤锦鲤脚本`);
        });
    }
    let addPar = () => {
        options.method = "post";
        options.body = bodys;
        request(options, (err, rsp) => {
            (err || rsp.statusCode != 200) ? sendText(`新增变量失败！\n${rsp.body.message}`) : sendText(`新增完成，可直接运行🍤锦鲤脚本`);
        });
    }
    let id = checkID();
    if (id) {
        deleteAndAddPar(id);
    } else {
        sendText(`未检测到logs变量，将自动添加`);
        addPar();
    }
}

const e = calcLogs(number);
if (e.status) {
    sleep(1000);
    queryQLEnvs(e.content);
}
