package router

import (
	"yiyun-console/action"

	"github.com/barnettZQG/yiyun"
)

func init() {
	yiyun.Router("/", &action.IndexAction{}, "get", "Index")
	yiyun.Router("/login", &action.IndexAction{}, "get", "Login")
}
