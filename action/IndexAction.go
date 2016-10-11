package action

import "github.com/barnettZQG/yiyun"

type IndexAction struct {
	yiyun.Action
}

//Index 主页
func (e *IndexAction) Index() {
	e.Tpl = "index"
}

//Login 登陆页面
func (e *IndexAction) Login() {
	e.Tpl = "login"
}
