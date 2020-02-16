/*
 * @Description: Jenkins Demo
 * @Author: leekwe
 * @Date: 2020-02-14 12:00:52
 * @version: 1.0
 * @LastEditors: leekwe
 * @LastEditTime : 2020-02-14 12:02:46
 */
const http = require('http');
const app = http.createServer((req,res)=>{
    res.end("Hello, Jenkins, build from Docker.(v2.0.0)");
});
console.info('app is running on 3000');
app.listen(3000);