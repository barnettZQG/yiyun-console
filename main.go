package main

import (
	"flag"
	_ "yiyun-console/router"

	"github.com/barnettZQG/yiyun"
)

var (
	addr     = flag.String("addr", ":8080", "TCP address to listen to")
	compress = flag.Bool("compress", true, "Whether to enable transparent response compression")
)

func main() {
	yiyun.Run(*addr, *compress)
}
